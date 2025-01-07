import 'dart:async';

import 'package:floor/floor.dart';

import '../models/post_model.dart';
import 'dao/post_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'app_database.g.dart'; // Add this line

@Database(version: 1, entities: [PostModel])
abstract class AppDatabase extends FloorDatabase {
  PostDao get postDao;
}
