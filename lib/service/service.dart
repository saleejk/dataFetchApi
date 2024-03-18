import 'package:demo_task/model/model.dart';
import 'package:dio/dio.dart';

class clothServices {
  final Dio _dio = Dio();
  final String _url = 'https://fakestoreapi.com/products';

  Future<List<Clothings>> fetchData() async {
    try {
      final Response response = await _dio.get(_url);
      return (response.data as List)
          .map((json) => Clothings.fromJson(json))
          .toList();
    } catch (error) {
      throw Exception('Failed to load Todo data : $error');
    }
  }
}
