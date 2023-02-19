import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../models/commercial/ardoise_model.dart';
import '../../repository/repository.dart';

class ArdoiseHandlers {
  final Repository repos;

  ArdoiseHandlers(this.repos);

  Router get router {
    final router = Router();


    router.get('/', (Request request) async {
      List<ArdoiseModel> data = await repos.ardoises.getAllData();
      return Response.ok(jsonEncode(data));
    });

    router.get('/<id>', (Request request, String id) async {
      late ArdoiseModel data;
      try {
        data = await repos.ardoises.getFromId(int.parse(id));
      } catch (e) {
        print(e);
        return Response(404);
      }
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.post('/insert-new-ardoise', (Request request) async {
      var input = jsonDecode(await request.readAsString());

      ArdoiseModel data = ArdoiseModel(
        ardoise: input['ardoise'],
        ardoiseId: input['ardoiseId'], 
        succursale: input['succursale'],
        signature: input['signature'],
        created: DateTime.parse(input['created'])
      );
      try {
        await repos.ardoises.insertData(data);
      } catch (e) {
        print(e);
        return Response(422);
      }
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.put('/update-ardoise/', (Request request) async {
       dynamic input = jsonDecode(await request.readAsString());
      final editH = ArdoiseModel.fromJson(input);
      ArdoiseModel? data =
          await repos.ardoises.getFromId(editH.id!); 

      if (input['ardoise'] != null) {
        data.ardoise = input['ardoise'];
      }
      if (input['ardoiseId'] != null) {
        data.ardoiseId = input['ardoiseId'];
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
      repos.ardoises.update(data);
      return Response.ok(jsonEncode(data.toJson()));
    });

    router.delete('/delete-ardoise/<id>', (Request request, String id) async {
      var id = request.params['id'];
      repos.ardoises.deleteData(int.parse(id!));
      return Response.ok('Supprimée');
    });

    router.all(
      '/<ignored|.*>',
      (Request request) =>
          Response.notFound('La Page ardoises n\'est pas trouvé'),
    );

    return router;
  }
}