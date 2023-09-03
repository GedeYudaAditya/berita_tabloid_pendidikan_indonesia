import "package:berita_tabloid_pendidikan_indonesia/model/berita.dart";
import "package:dio/dio.dart";

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'http://tabloid-pendidikan-indonesia.test:8080/api';

  Future<List<Berita>> getBerita() async {
    final Response response;

    // print(response);
    try {
      response = await _dio.get('$_baseUrl/get-berita');
      List<Berita> berita = (response.data['berita'] as List)
          .map((e) => Berita.fromJson(e))
          .toList();
      // print(berita);
      return berita;
    } catch (e) {
      print('gagal $e');
      throw Exception('Failed to load berita');
    }
  }

  // Future<List<dynamic>> getCategories() async {
  //   try {
  //     final response = await _dio.get(
  //         'https://raw.githubusercontent.com/Codelessly/FlutterLoadingGIFs/master/categories.json');
  //     return response.data;
  //   } catch (e) {
  //     throw Exception('Failed to load categories');
  //   }
  // }

  // Future<List<dynamic>> getNews() async {
  //   try {
  //     final response = await _dio.get(
  //         'https://raw.githubusercontent.com/Codelessly/FlutterLoadingGIFs/master/categories.json');
  //     return response.data;
  //   } catch (e) {
  //     throw Exception('Failed to load news');
  //   }
  // }
}
