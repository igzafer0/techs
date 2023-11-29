
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:techs/config/source_manager/network_source_manager.dart';
import 'package:techs/injection_container.dart';

abstract class RemoteDataSource {
  Future<void> get(String path);
}
class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<void> get(String path) async {
    try {
      await locator<NetworkSourceManager>().networkManager.get(path);
    } on DioException catch (e) {
      debugPrint("error $e");
    }
  }

}