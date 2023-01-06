import 'routes/get_all_actu.route.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:angivy/config/db.config.dart' as db_config;

void main(List<String> arguments) async {
//TODO: il faut encore améliorer ce code de sorte que les route s'excute ici sans appeller directment leur fonction comme ça

  //recupère les donnée dans le fichier .env
  var conf = db_config.DBCONFIG();
  //instance de Router
  final app = Router();
  getAllActus(app: app);
  //lancement du serveur
  await io.serve(app, conf.host, conf.port);
}
