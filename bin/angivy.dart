import 'package:angivy/models/actu.model.dart';

//exemple pour les tests
void main(List<String> arguments) async {
  var results = await ActuModel().getActusJson();

  print(results);
}
