import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:angivy/config/db.config.dart' as db_config;
import '../models/actu.model.dart';

void getAllActus() async {
  //recupère les donnée dans le fichier .env
  var conf = db_config.DBCONFIG();

  //instance de Router
  final app = Router();

  //définir une route pour renvoyer le résultat de la fonction "getActusJson" sous forme de réponse HTTP
  app.get('/actus', (Request request) async {
    var usersJson = await ActuModel().getActusJson();
    return Response.ok(usersJson,
        headers: {'Content-Type': 'application/json'});
  });

  await io.serve(app, 'localhost', conf.port);
}
