import 'package:getx_mvvm/models/post_model.dart';

import '../database/app_database.dart';
import '../services/api_service.dart';

class PostRepository {
  final ApiService _apiService;
  final AppDatabase _database;

  PostRepository(this._apiService, this._database);

  Future<List<PostModel>> getPosts() async {
    try {
      final posts = await _apiService.fetchPosts();
      await _database.postDao.insertPosts(posts); // Cache locally
      return posts;
    } catch (e) {
      return await _database.postDao.getAllPosts(); // Load from local DB
    }
  }
}