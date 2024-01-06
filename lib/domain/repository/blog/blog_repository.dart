import 'package:techs/domain/entity/blog/blog_entity.dart';

abstract class BlogRepository {
  Future<BlogEntity> getBlog(String url);
}
