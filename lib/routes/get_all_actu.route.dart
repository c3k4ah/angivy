import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:angivy/config/db.config.dart' as db_config;
import '../models/actu.model.dart';

void getAllActus() async {
  var conf = db_config.DBCONFIG();
  final app = Router();
  app.get('/actus', (Request request) async {
    var usersJson = await ActuModel().getActuJson();
    return Response.ok(usersJson,
        headers: {'Content-Type': 'application/json'});
  });

  await io.serve(app, 'localhost', conf.port);
}
