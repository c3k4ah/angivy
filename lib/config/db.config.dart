import 'package:angivy/entities/db.config.entity.dart';
import 'package:dotenv/dotenv.dart';

class DBCONFIG implements DbConfigEntity {
  //Analyse les variables d'environnement dans le fichier .env et les ajoute à la Map.
  var env = DotEnv()..load(['../.env']);

  @override
  String get dbname {
    if (env['DB_NAME'] != null && env['DB_NAME']!.isNotEmpty) {
      return env['DB_NAME'].toString();
    } else {
      throw Exception('DB_NAME is empty.');
    }
  }

  @override
  String get host {
    if (env['HOST'] != null && env['HOST']!.isNotEmpty) {
      return env['HOST'].toString();
    } else {
      throw Exception('HOST is empty.');
    }
  }

  @override
  String get password {
    if (env['PASSWORD'] != null && env['PASSWORD']!.isNotEmpty) {
      return env['PASSWORD'].toString();
    } else {
      throw Exception('PASSWORD is empty.');
    }
  }

  @override
  int get port {
    if (env['DEV_PORT'] != null && env['DEV_PORT']!.isNotEmpty) {
      return int.parse(env['DEV_PORT']!);
    } else {
      throw Exception('DEV_PORT is empty.');
    }
  }

  @override
  String get user {
    if (env['USER_NAME'] != null && env['USER_NAME']!.isNotEmpty) {
      return env['USER_NAME'].toString();
    } else {
      throw Exception('USER_NAME is empty.');
    }
  }
}
