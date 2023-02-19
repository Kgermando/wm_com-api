import 'package:postgres/postgres.dart';

import '../../models/commercial/bon_consommation_model.dart';
  

class BonConsommationRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  BonConsommationRepository(this.executor, this.tableName);

  Future<List<BonConsommationModel>> getAllData() async {
    var data = <BonConsommationModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(BonConsommationModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(BonConsommationModel data) async {
    await executor.transaction((ctx) async {
      await ctx.execute(
          "INSERT INTO $tableName (id, ardoise, reference, consommation,"  
          "succursale, signature, created)"
          "VALUES (nextval('bon_consommations_id_seq'), @1, @2, @3, @4, @5 @6)",
          substitutionValues: {
            '1': data.ardoise,
            '2': data.reference,
            '3': data.consommation,
            '4': data.succursale,
            '5': data.signature,
            '6': data.created
          });
    });
  }

  Future<void> update(BonConsommationModel data) async {
    await executor.query("""UPDATE $tableName
          SET ardoise = @1, reference = @2, consommation = @3, succursale = @4,
          signature = @5, created = @6 WHERE id = @7""",
        substitutionValues: {
          '1': data.ardoise,
          '2': data.reference,
          '3': data.consommation,
          '4': data.succursale,
          '5': data.signature,
          '6': data.created, 
          '7': data.id
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

  Future<BonConsommationModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id'");
    return BonConsommationModel(
        id: data[0][0],
        ardoise: data[0][1],
        reference: data[0][2],
        consommation: data[0][3],
        succursale: data[0][4],
        signature: data[0][5],
        created: data[0][6]
      );
  }
}
