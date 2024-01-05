import 'package:techs/data/source/remote/blog/blog_remote_source.dart';
import 'package:techs/domain/entity/blog_entity/blog_entity.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/injection_container.dart';

class BlogRepositoryImpl implements BlogRepository {
  @override
  Future<BlogEntity> getBlog() async {
    var result = await locator<BlogRemoteDataSource>().getBlog();
    return result.toEntity();
  }
}
