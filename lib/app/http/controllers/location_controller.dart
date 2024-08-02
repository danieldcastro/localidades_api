import 'package:vania/vania.dart';

import '../../data/repository/location_repository.dart';

class LocationController extends Controller {
  final LocationRepository _locationRepository;

  LocationController(this._locationRepository);

  Future<Response> getStates() async {
    final result = await _locationRepository.getStates();

    return Response.json(result.map((state) => state.toMap()).toList());
  }

  Future<Response> getCitiesByState(String stateAcronym) async {
    final result = await _locationRepository.getCitiesByState(stateAcronym);

    return Response.json(result.map((city) => city.toMap()).toList());
  }
}
