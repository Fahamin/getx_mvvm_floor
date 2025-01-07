import 'dart:convert';

import 'package:getx_mvvm/models/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((post) => PostModel.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
