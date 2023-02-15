import 'package:postgres/postgres.dart';

import '../../models/reservation/paiement_reservation_model.dart';

class PaiementReservationRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  PaiementReservationRepository(this.executor, this.tableName);

  Future<List<PaiementReservationModel>> getAllData() async {
    var data = <PaiementReservationModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(PaiementReservationModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(PaiementReservationModel data) async {
    await executor.transaction((ctx) async {
      await ctx.query(
          "INSERT INTO $tableName (id, reference, client, motif,"
          "montant, signature, created)"
          "VALUES (nextval('paiement_reservations_id_seq'), @1, @2, @3, @4, @5, @6)",
          substitutionValues: {
            '1': data.reference,
            '2': data.client,
            '3': data.motif,
            '4': data.montant,
            '5': data.signature,
            '6': data.created
          });
    });
  }

  Future<void> update(PaiementReservationModel data) async {
    await executor.query("""UPDATE $tableName
      SET reference = @1, client = @2, motif = @3, montant = @4, 
        signature = @5 created = @6 WHERE id = @7""",
        substitutionValues: {
          '1': data.reference,
          '2': data.client,
          '3': data.motif,
          '4': data.montant,
          '5': data.signature,
          '6': data.created,
          '7': data.id
        });
  }

  deleteData(int id) async {
    try {
      await executor.transaction((conn) async {
        // ignore: unused_local_variable
        var result =
            await conn.execute("DELETE FROM $tableName WHERE \"id\" = '$id';");
      });
    } catch (e) {
      'erreur $e';
    }
  }

  Future<PaiementReservationModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id';");
    return PaiementReservationModel(
      id: data[0][0],
      reference: data[0][1],
      client: data[0][2],
      motif: data[0][3],
      montant: data[0][4],
      signature: data[0][5],
      created: data[0][6]
    );
  }
}
