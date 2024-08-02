import 'package:vania/vania.dart';

import '../../data/repository/location_repository.dart';

class LocationController extends Controller {
  Future<Response> getStates() async {
    final result = await LocationRepository().getStates();

    return Response.json(result.map((state) => state.toMap()).toList());
  }

  Future<Response> getCitiesByState(String stateAcronym) async {
    final result = await LocationRepository().getCitiesByState(stateAcronym);

    return Response.json(result.map((city) => city.toMap()).toList());
  }
}
