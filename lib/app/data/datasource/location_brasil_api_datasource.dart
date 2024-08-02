import 'package:dio/dio.dart';

import '../../models/city_model.dart';
import '../../models/state_model.dart';

class LocationBrasilApiDatasource {
  final baseUrl = 'https://brasilapi.com.br/api/ibge';

  final _dio = Dio();

  Future<List<StateModel>> getStates() async {
    final Response(:List data) = await _dio.get('$baseUrl/uf/v1');

    return data.cast<Map<String, dynamic>>().map(StateModel.fromJson).toList();
  }

  Future<List<CityModel>> getCitiesByState(String stateAcronym) async {
    final Response(:List data) = await _dio.get(
        '$baseUrl/municipios/v1/$stateAcronym',
        queryParameters: {'providers': 'dados-abertos-br,gov,wikipedia'});

    return data.cast<Map<String, dynamic>>().map(CityModel.fromJson).toList();
  }
}
