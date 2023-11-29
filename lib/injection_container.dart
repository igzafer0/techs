import 'package:get_it/get_it.dart';
import 'package:techs/config/source_manager/network_source_manager.dart';

final locator = GetIt.instance;

void init() {
    locator.registerLazySingleton(() => NetworkSourceManager());
}