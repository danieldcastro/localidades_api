import 'package:get_it/get_it.dart';

import '../route/api_route.dart';
import 'data/datasource/location_brasil_api_datasource.dart';
import 'data/repository/location_repository.dart';
import 'http/controllers/location_controller.dart';

final getIt = GetIt.I;

void setupLocator() {
  getIt.registerFactory(LocationBrasilApiDatasource.new);
  getIt.registerFactory<LocationRepository>(() => LocationRepository(getIt()));
  getIt.registerFactory<LocationController>(() => LocationController(getIt()));
  getIt.registerFactory<ApiRoute>(() => ApiRoute(getIt()));
}
