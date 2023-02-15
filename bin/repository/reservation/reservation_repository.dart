import 'package:postgres/postgres.dart';

import '../../models/reservation/reservation_model.dart';
 

class ReservationRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  ReservationRepository(this.executor, this.tableName);

  Future<List<ReservationModel>> getAllData() async {
    var data = <ReservationModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(ReservationModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(ReservationModel data) async {
    await executor.transaction((ctx) async {
      await ctx.query(
          "INSERT INTO $tableName (id, client, telephone, email,"
          "adresse, nbre_personne, duree_event, created_day, background,"
          "event_name, signature, created)"
          "VALUES (nextval('reservations_id_seq'), @1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11)",
          substitutionValues: {
            '1': data.client,
            '2': data.telephone,
            '3': data.email,
            '4': data.adresse,
            '5': data.nbrePersonne,
            '6': data.dureeEvent,
            '7': data.createdDay,
            '8': data.background,
            '9': data.eventName,
            '10': data.signature,
            '11': data.created
          });
    });
  }

  Future<void> update(ReservationModel data) async {
    await executor.query("""UPDATE $tableName
      SET client = @1, telephone = @2, email = @3, adresse = @4, 
        nbre_personne = @5, duree_event = @6, created_day = @7, background = @8, 
        event_name = @9, signature = @10, created = @11 WHERE id = @12""",
        substitutionValues: {
          '1': data.client,
          '2': data.telephone,
          '3': data.email,
          '4': data.adresse,
          '5': data.nbrePersonne,
          '6': data.dureeEvent,
          '7': data.createdDay,
          '8': data.background,
          '9': data.eventName,
          '10': data.signature,
          '11': data.created,
          '12': data.id
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

  Future<ReservationModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id';");
    return ReservationModel(
      id: data[0][0],
      client: data[0][1],
      telephone: data[0][2],
      email: data[0][3],
      adresse: data[0][4],
      nbrePersonne: data[0][5],
      dureeEvent: data[0][6],
      createdDay: data[0][7],
      background: data[0][8],
      eventName: data[0][9],
      signature: data[0][10],
      created: data[0][11],
    );
  }
}
