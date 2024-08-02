import '../../models/city_model.dart';
import '../../models/state_model.dart';
import '../datasource/location_brasil_api_datasource.dart';

class LocationRepository {
  final _locationApiDatasource = LocationBrasilApiDatasource();

  Future<List<StateModel>> getStates() {
    return _locationApiDatasource.getStates();
  }

  Future<List<CityModel>> getCitiesByState(String stateAcronym) {
    return _locationApiDatasource.getCitiesByState(stateAcronym);
  }
}
