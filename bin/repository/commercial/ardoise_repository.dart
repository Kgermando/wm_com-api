import 'package:postgres/postgres.dart';
 
import '../../models/commercial/ardoise_model.dart';

class ArdoiseRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  ArdoiseRepository(this.executor, this.tableName);

  Future<List<ArdoiseModel>> getAllData() async {
    var data = <ArdoiseModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(ArdoiseModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(ArdoiseModel data) async {
    await executor.transaction((ctx) async {
      await ctx.execute(
          "INSERT INTO $tableName (id, ardoise, ardoise_id,"  
          "succursale, signature, created)"
          "VALUES (nextval('ardoises_id_seq'), @1, @2, @3, @4, @5)",
          substitutionValues: {
            '1': data.ardoise,
            '2': data.ardoiseId,
            '3': data.succursale,
            '4': data.signature,
            '5': data.created
          });
    });
  }

  Future<void> update(ArdoiseModel data) async {
    await executor.query("""UPDATE $tableName
          SET ardoise = @1, ardoise_id = @2, succursale = @3,
          signature = @4, created = @5 WHERE id = @6""",
        substitutionValues: {
          '1': data.ardoise,
          '2': data.ardoiseId,
          '3': data.succursale,
          '4': data.signature,
          '5': data.created, 
          '6': data.id
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

  Future<ArdoiseModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id'");
    return ArdoiseModel(
        id: data[0][0],
        ardoise: data[0][1],
        ardoiseId: data[0][2],
        succursale: data[0][3],
        signature: data[0][4],
        created: data[0][5]
      );
  }
}
