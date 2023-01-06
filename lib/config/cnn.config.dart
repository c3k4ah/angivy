import 'package:mysql1/mysql1.dart';
import 'package:angivy/config/db.config.dart' as db_config;

ConnectionSettings connectionSettings() {
  var conf = db_config.DBCONFIG();
  var settings = ConnectionSettings(
    host: conf.host,
    user: conf.user,
    password: conf.password,
    db: conf.dbname,
  );

  return settings;
}
