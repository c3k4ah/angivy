import 'package:mysql1/mysql1.dart';
import 'package:angivy/config/db.config.dart' as db_config;

ConnectionSettings connectionSettings() {
  var conf = db_config.DBCONFIG();

  //Connection à la base de donnée
  var settings = ConnectionSettings(
    host: conf.host,
    user: conf.user,
    password: conf.password,
    db: conf.dbname,
  );
//retourne ConnectionSettings
  return settings;
}
