import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/controllers/post_controller.dart';

import '../routes/Routes.dart';

class Postlistview extends StatelessWidget {
  const Postlistview({super.key});

  @override
  Widget build(BuildContext context) {
    final PostController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: controller.posts.length,
            itemBuilder: (context, index) {
              final post = controller.posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
                onTap: () {
                  Get.toNamed(Routes.details, arguments: post); // Pass post directly
                },
              );
            });
      }),
    );
  }
}
