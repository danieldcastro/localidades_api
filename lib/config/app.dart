import 'package:vania/vania.dart';

import '../app/providers/route_service_provider.dart';
import '../app/service_locator.dart';
import 'cors.dart';

Map<String, dynamic> config = {
  'name': env('APP_NAME'),
  'url': env('APP_URL'),
  'timezone': '',
  'cors': cors,
  'providers': <ServiceProvider>[
    RouteServiceProvider(getIt()),
  ],
};
