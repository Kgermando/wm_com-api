import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
 
import '../../models/commercial/bon_consommation_model.dart';
import '../../repository/repository.dart';

class BonCOnsommationHandlers {
  final Repository repos;

  BonCOnsommationHandlers(this.repos);

  Router get router {
    final router = Router();


    router.get('/', (Request request) async {
      List<BonConsommationModel> data = await repos.bonConsommations.getAllData();
      return Response.ok(jsonEncode(data));
    });

    router.get('/<id>', (Request request, String id) async {
      late BonConsommationModel data;
      try {
        data = await repos.bonConsommations.getFromId(int.parse(id));
      } catch (e) {
        print(e);
        return Response(404);
      }
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.post('/insert-new-bon-consommation', (Request request) async {
      var input = jsonDecode(await request.readAsString());

      BonConsommationModel data = BonConsommationModel(
        ardoise: input['ardoise'],
        reference: input['reference'],
        consommation: input['consommation'], 
        succursale: input['succursale'],
        signature: input['signature'],
        created: DateTime.parse(input['created'])
      );
      try {
        await repos.bonConsommations.insertData(data);
      } catch (e) {
        print(e);
        return Response(422);
      }
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.put('/update-bon-consommation/', (Request request) async {
       dynamic input = jsonDecode(await request.readAsString());
      final editH = BonConsommationModel.fromJson(input);
      BonConsommationModel? data =
          await repos.bonConsommations.getFromId(editH.id!); 

      if (input['ardoise'] != null) {
        data.ardoise = input['ardoise'];
      }
      if (input['reference'] != null) {
        data.reference = input['reference'];
      }
      if (input['consommation'] != null) {
        data.consommation = input['consommation'];
      } 
      if (input['succursale'] != null) {
        data.succursale = input['succursale'];
      }
      if (input['signature'] != null) {
        data.signature = input['signature'];
      }
      if (input['created'] != null) {
        data.created = DateTime.parse(input['created']);
      }
      repos.bonConsommations.update(data);
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.delete('/delete-bon-consommation/<id>', (Request request, String id) async {
      var id = request.params['id'];
      repos.bonConsommations.deleteData(int.parse(id!));
      return Response.ok('Supprimée');
    });

    router.all(
      '/<ignored|.*>',
      (Request request) =>
          Response.notFound('La Page bonConsommations n\'est pas trouvé'),
    );

    return router;
  }
}