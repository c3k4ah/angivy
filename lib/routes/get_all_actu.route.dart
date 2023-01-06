import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/actu.model.dart';

void getAllActus({required Router app}) async {
  //définir une route pour renvoyer le résultat de la fonction "getActusJson" sous forme de réponse HTTP
  app.get('/actus', (Request request) async {
    var usersJson = await ActuModel().getActusJson();
    return Response.ok(usersJson,
        headers: {'Content-Type': 'application/json'});
  });
}
