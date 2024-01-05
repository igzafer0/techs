import 'package:techs/data/dto/blog_model/blog_model.dart';
import 'package:techs/data/source/remote/blog/blog_remote_source.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/injection_container.dart';

class BlogRepositoryImpl implements BlogRepository {
  @override
  Future<BlogModel> getBlog() async {
    return await locator<BlogRemoteDataSource>().getBlog();
  }
}
