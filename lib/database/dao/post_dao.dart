import 'package:floor/floor.dart';

import '../../models/post_model.dart';

@dao
abstract class PostDao {
  @Query('SELECT * FROM posts')
  Future<List<PostModel>> getAllPosts();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertPosts(List<PostModel> posts);
}
