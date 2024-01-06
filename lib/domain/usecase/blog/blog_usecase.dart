import 'package:techs/domain/entity/blog/blog_entity.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/injection_container.dart';

class BlogUseCase {
  Future<BlogEntity> blog(String url) {
    return locator<BlogRepository>().getBlog(url);
  }
}
