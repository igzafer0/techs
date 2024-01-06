import 'package:dio/dio.dart';
import 'package:techs/config/source_manager/network_source_manager.dart';
import 'package:techs/data/dto/blog/blog_model.dart';
import 'package:techs/injection_container.dart';

abstract class BlogRemoteDataSource {
  Future<BlogModel> getBlog();
}

class BlogRemoteDataSourceImpl extends BlogRemoteDataSource {
  @override
  Future<BlogModel> getBlog() async {
    locator<NetworkSourceManager>().networkManager.options =
        BaseOptions(baseUrl: "https://www.donanimhaber.com/rss/tum/");
    var rawResult = await locator<NetworkSourceManager>().networkManager.get("");

    return BlogModel.fromJson(rawResult.data);
  }
}
