import 'package:vania/vania.dart';

import '../../route/api_route.dart';

class RouteServiceProvider extends ServiceProvider {
  final ApiRoute _apiRoute;

  RouteServiceProvider(this._apiRoute);

  @override
  Future<void> boot() async {}

  @override
  Future<void> register() async {
    _apiRoute.register();
  }
}
