import 'package:get_it/get_it.dart';
import 'package:techs/config/navigation/navigation_route.dart';
import 'package:techs/config/navigation/navigation_service.dart';
import 'package:techs/config/source_manager/network_source_manager.dart';
import 'package:techs/data/repository/blog/blog_repository_impl.dart';
import 'package:techs/data/source/remote/blog/blog_remote_source.dart';
import 'package:techs/domain/repository/blog/blog_repository.dart';
import 'package:techs/domain/usecase/blog/blog_usecase.dart';

final locator = GetIt.instance;

void init() {
  locator.registerSingleton(NavigationRoute());
  locator.registerSingleton(NavigationService());

  locator.registerLazySingleton(() => BlogUseCase());

  locator.registerLazySingleton(() => NetworkSourceManager());

  locator.registerLazySingleton<BlogRepository>(() => BlogRepositoryImpl());
  locator.registerLazySingleton<BlogRemoteDataSource>(
      () => BlogRemoteDataSourceImpl());
}
