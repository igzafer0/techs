import 'package:techs/domain/entity/blog_entity/blog_entity.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/injection_container.dart';

class BlogUseCase {
  Future<BlogEntity> blog() {
    return locator<BlogRepository>().getBlog();
  }
}
