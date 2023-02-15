import 'package:postgres/postgres.dart';

import '../../models/commercial/courbe_vente_gain_model.dart';
import '../../models/commercial/gain_model.dart';

class GainRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  GainRepository(this.executor, this.tableName);


  Future<List<GainModel>> getAllData() async {
    var data = <GainModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(GainModel.fromSQL(row));
    }
    return data.toList();
  }
 
  Future<List<CourbeGainModel>> getAllDataChartDay() async {
    var data = <CourbeGainModel>{};

    var querySQL =
        """SELECT EXTRACT(HOUR FROM "created" ::TIMESTAMP), 
        SUM("sum"::FLOAT) 
        FROM $tableName 
        WHERE DATE("created") >= CURRENT_DATE AND 
        DATE("created") < CURRENT_DATE + INTERVAL '1 DAY'  
        GROUP BY EXTRACT(HOUR FROM "created" ::TIMESTAMP) 
        ORDER BY EXTRACT(HOUR FROM "created" ::TIMESTAMP) ASC ;""";

    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(CourbeGainModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<List<CourbeGainModel>> getAllDataChartMounth() async {
    var data = <CourbeGainModel>{};
    var querySQL = 
       """SELECT EXTRACT(DAY FROM "created" ::TIMESTAMP), 
          SUM(sum::FLOAT) 
        FROM $tableName WHERE
        EXTRACT(MONTH FROM "created" ::TIMESTAMP) = EXTRACT(MONTH FROM CURRENT_DATE ::TIMESTAMP) AND
        EXTRACT(YEAR FROM "created" ::TIMESTAMP) = EXTRACT(YEAR FROM CURRENT_DATE ::TIMESTAMP)
        GROUP BY EXTRACT(DAY FROM "created" ::TIMESTAMP) 
        ORDER BY EXTRACT(DAY FROM "created" ::TIMESTAMP) ASC;
      """; 
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(CourbeGainModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<List<CourbeGainModel>> getAllDataChartYear() async {
    var data = <CourbeGainModel>{};
        // Filtre est egal à l'année actuel
    var querySQL = """SELECT EXTRACT(MONTH FROM "created" ::TIMESTAMP), 
        SUM(sum::FLOAT)
      FROM $tableName WHERE
      EXTRACT(YEAR FROM "created" ::TIMESTAMP) = EXTRACT(YEAR FROM CURRENT_DATE ::TIMESTAMP)
      GROUP BY EXTRACT(MONTH FROM "created" ::TIMESTAMP) 
      ORDER BY EXTRACT(MONTH FROM "created" ::TIMESTAMP) ASC;
    """;
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(CourbeGainModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(GainModel data) async {
    await executor.transaction((ctx) async {
      await ctx.execute(
          "INSERT INTO $tableName (id, sum,"
          "succursale, signature, created)"
          "VALUES (nextval('gains_id_seq'), @1, @2, @3, @4)",
          substitutionValues: {
            '1': data.sum,
            '2': data.succursale,
            '3': data.signature,
            '4': data.created
          });
    });
  }

  Future<void> update(GainModel data) async {
    await executor.query("""UPDATE $tableName
          SET sum = @1, succursale = @2,
          signature = @3, created = @4 WHERE id = @5""", substitutionValues: {
      '1': data.sum,
      '2': data.succursale,
      '3': data.signature,
      '4': data.created,
      '5': data.id
    });
  }

  deleteData(int id) async {
    try {
      await executor.transaction((conn) async {
        // ignore: unused_local_variable
        var result = await conn.execute('DELETE FROM $tableName WHERE id=$id;');
      });
    } catch (e) {
      'erreur $e';
    }
  }

  Future<GainModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id'");
    return GainModel(
      id: data[0][0],
      sum: data[0][1],
        signature: data[0][2],
        succursale: data[0][3],
        created: data[0][4]
    );
  } 
}