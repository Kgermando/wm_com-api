import 'package:postgres/postgres.dart';

import '../../models/finances/caisse_model.dart';

class CaissesRepository {
  final PostgreSQLConnection executor;
  final String tableName;

  CaissesRepository(this.executor, this.tableName);

  Future<List<CaisseModel>> getAllData() async {
    var data = <CaisseModel>{};

    var querySQL = "SELECT * FROM $tableName ORDER BY \"created\" DESC;";
    List<List<dynamic>> results = await executor.query(querySQL);
    for (var row in results) {
      data.add(CaisseModel.fromSQL(row));
    }
    return data.toList();
  }

  Future<void> insertData(CaisseModel data) async {
    await executor.transaction((ctx) async {
      await ctx.execute(
        "INSERT INTO $tableName (id, nom_complet, piece_justificative,"
        "libelle, montant_encaissement,"
        "departement, type_operation, numero_operation, signature,"
        "reference, caisse_name, created, montant_decaissement)"
        "VALUES (nextval('caisses_id_seq'), @1, @2, @3, @4, @5, @6,"
        "@7, @8, @9, @10, @11, @12)",
        substitutionValues: {
           '1': data.nomComplet,
            '2': data.pieceJustificative,
            '3': data.libelle,
            '4': data.montantEncaissement,
            '5': data.departement,
            '6': data.typeOperation,
            '7': data.numeroOperation,
            '8': data.signature,
            '9': data.reference,
            '10': data.caisseName,
            '11': data.created,
            '12': data.montantDecaissement
        });
    });
  }

  Future<void> update(CaisseModel data) async {
    await executor.query("""UPDATE $tableName
        SET nom_complet = @1, piece_justificative = @2, libelle = @3,
        montant_encaissement = @4, departement = @5,
        type_operation = @6, numero_operation = @7, signature = @8,
        reference = @9, caisse_name = @10, created = @11, montant_decaissement = @12 WHERE id = @13""", substitutionValues: {
      '1': data.nomComplet,
      '2': data.pieceJustificative,
      '3': data.libelle,
      '4': data.montantEncaissement,
      '5': data.departement,
      '6': data.typeOperation,
      '7': data.numeroOperation,
      '8': data.signature,
      '9': data.reference,
      '10': data.caisseName,
      '11': data.created,
      '12': data.montantDecaissement,
      '13': data.id
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

  Future<CaisseModel> getFromId(int id) async {
    var data =
        await executor.query("SELECT * FROM  $tableName WHERE \"id\" = '$id'");
    return CaisseModel(
        id: data[0][0],
        nomComplet: data[0][1],
        pieceJustificative: data[0][2],
        libelle: data[0][3],
        montantEncaissement: data[0][4],
        departement: data[0][5],
        typeOperation: data[0][6],
        numeroOperation: data[0][7],
        signature: data[0][8],
        reference: data[0][9],
        caisseName: data[0][10],
        created: data[0][11],
       montantDecaissement: data[0][12],
      );
  }


}