import 'package:vania/vania.dart';

import '../app/http/controllers/location_controller.dart';

class ApiRoute implements Route {
  @override
  void register() {
    /// Base RoutePrefix
    Router.basePrefix('api');

    Router.get(
      '/states',
      LocationController().getStates,
    );

    Router.get(
      '/cities/{stateAcronym}',
      LocationController().getCitiesByState,
    );

    // Router.get("/home", homeController.index);

    // Router.get("/hello-world", () {
    //   return Response.html('Hello World');
    // }).middleware([HomeMiddleware()]);

    // Return error code 400
    // Router.get('wrong-request',
    //         () => Response.json({'message': 'Hi wrong request'}))
    //     .middleware([ErrorResponseMiddleware()]);

    // // Return Authenticated user data
    // Router.get("/user", () {
    //   return Response.json(Auth().user());
    // }).middleware([AuthenticateMiddleware()]);
  }
}
