import 'package:localidades_api/app/service_locator.dart';
import 'package:localidades_api/config/app.dart';
import 'package:vania/vania.dart';

void main() {
  setupLocator();
  Application().initialize(config: config);
}
