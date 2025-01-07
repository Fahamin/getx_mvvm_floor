import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/repository.dart';
import 'package:getx_mvvm/routes/Routes.dart';
import 'package:getx_mvvm/services/api_service.dart';
import 'controllers/post_controller.dart';
import 'database/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = await $FloorAppDatabase.databaseBuilder('db32').build();
  final apiService = ApiService();
  final repository = PostRepository(apiService, database);

  Get.put(PostController(repository));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeScreen,
      getPages: appRoutes(),
    );
  }
}
