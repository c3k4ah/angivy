import 'dart:convert';

import 'package:angivy/entities/actu.dart';
import 'package:mysql1/mysql1.dart';

import '../config/cnn.config.dart';

class ActuModel {
  static Future<List<Actu>> getAllActus() async {
    var actus = <Actu>[];

    // Connectez-vous à la base de données
    var conn = await MySqlConnection.connect(connectionSettings());

    // Exécute la requête SQL pour récupérer les données de la table "actu"
    var results = await conn.query('SELECT * FROM actu');

    // Parcoure les résultats et crée des objets Actu à partir des données de chaque ligne
    for (var row in results) {
      var actu = Actu(
        id: row[0],
        titre: row[1],
        description: row[2],
        date: row[3],
        image: row[4],
      );

      actus.add(actu);
    }

    // Fermez la connexion à la base de données
    await conn.close();

    return actus;
  }

//--------------------------------------------------------------------
//On génère un JSON à partir de la fonction getAllActus() qui retourne List<Actu>
//la class Actu se trouve dans "entities/actu.dart"

  Future<String> getActusJson() async {
    var actus = await ActuModel.getAllActus();
    return json.encode(actus);
  }
}
