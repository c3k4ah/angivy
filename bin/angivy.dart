import 'package:angivy/models/actu.model.dart';

void main(List<String> arguments) async {
  var results = await ActuModel().getActuJson();

  print(results);
}
