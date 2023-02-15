import 'package:postgres/postgres.dart';

import '../../models/commercial/creance_cart_model.dart';

class CreanceFactureRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  CreanceFactureRepository(this.executor, this.tableName);


  Future<List<CreanceCartModel>> getAllData() async {
    var data = <CreanceCartModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(CreanceCartModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(CreanceCartModel data) async {
    await executor.transaction((ctx) async {
      await ctx.execute(
        "INSERT INTO $tableName (id, cart, client,"
        "nom_client, telephone, delai_paiement,"
        "succursale, signature, created)"
        "VALUES (nextval('creance_factures_id_seq'), @1, @2, @3, @4, @5, @6, @7, @8)",
        substitutionValues: {
          '1': data.cart,
          '2': data.client,
          '3': data.nomClient,
          '4': data.telephone,
          '5': data.delaiPaiement,
          '6': data.succursale,
          '7': data.signature,
          '8': data.created
        }
      );
    });
  }

  Future<void> update(CreanceCartModel data) async {
    await executor.query("""UPDATE $tableName
      SET cart = @1, client = @2, nom_client = @3,
      telephone = @4, delai_paiement = @5, succursale = @6,
      signature = @7, created = @8 WHERE id = @9""", substitutionValues: {
      '1': data.cart,
      '2': data.client,
      '3': data.nomClient,
      '4': data.telephone,
      '5': data.delaiPaiement,
      '6': data.succursale,
      '7': data.signature,
      '8': data.created,
      '9': data.id
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

  Future<CreanceCartModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id'");
    return CreanceCartModel(
      id: data[0][0],
      cart: data[0][1],
      client: data[0][2],
      nomClient: data[0][3],
      telephone: data[0][4],
      addresse: data[0][5],
      delaiPaiement: data[0][6],
      succursale: data[0][7],
      signature: data[0][8],
      created: data[0][9]
    );
  } 
}