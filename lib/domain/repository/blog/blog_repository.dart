import 'package:techs/data/dto/blog_model/blog_model.dart';

abstract class BlogRepository {
  Future<BlogModel> getBlog();
}
