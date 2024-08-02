import 'package:localidades_api/app/data/datasource/location_brasil_api_datasource.dart';
import 'package:localidades_api/app/models/city_model.dart';
import 'package:localidades_api/app/models/state_model.dart';
import 'package:test/test.dart';

void main() {
  late LocationBrasilApiDatasource datasource;

  setUp(() {
    datasource = LocationBrasilApiDatasource();
  });

  test('getState return SP', () async {
    final result = await datasource.getStates();

    expect(result, isA<List<StateModel>>());
    expect(result.isNotEmpty, true);

    final isStateSp = result.any((state) => state.acronym == 'SP');

    expect(isStateSp, true);
  });

  test('getCities from SP', () async {
    final result = await datasource.getCitiesByState('SP');

    expect(result, isA<List<CityModel>>());
    expect(result.isNotEmpty, true);

    final isCityFromSp =
        result.any((city) => city.name.toLowerCase() == 'jundiaí');

    expect(isCityFromSp, true);
  });
}
