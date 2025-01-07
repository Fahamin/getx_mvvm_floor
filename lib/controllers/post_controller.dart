
import 'package:get/get.dart';
import 'package:getx_mvvm/models/post_model.dart';
import 'package:getx_mvvm/repository/repository.dart';

class PostController extends GetxController {

  final PostRepository repository;
  PostController(this.repository);

  var posts = <PostModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading.value = true;
    posts.value = await repository.getPosts();
    isLoading.value = false;
  }
}