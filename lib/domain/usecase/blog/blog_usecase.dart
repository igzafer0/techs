import 'package:techs/data/dto/blog_model/blog_model.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/injection_container.dart';

class BlogUseCase {
  Future<BlogModel> blog() {
    return locator<BlogRepository>().getBlog();
  }
}
