import 'package:techs/domain/entity/blog_entity/blog_entity.dart';

abstract class BlogRepository {
  Future<BlogEntity> getBlog();
}
