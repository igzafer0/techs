import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:techs/config/source_manager/network_source_manager.dart';
import 'package:techs/data/dto/blog_model/blog_model.dart';
import 'package:techs/injection_container.dart';
import 'package:xml2json/xml2json.dart';

abstract class BlogRemoteDataSource {
  Future<BlogModel> getBlog();
}

class BlogRemoteDataSourceImpl extends BlogRemoteDataSource {
  @override
  Future<BlogModel> getBlog() async {
    locator<NetworkSourceManager>().networkManager.options =
        BaseOptions(baseUrl: "https://feeds.feedburner.com/webteknocom");
    var rawResult =
        await locator<NetworkSourceManager>().networkManager.get("");
    debugPrint("döndüm");
    // Parse a simple XML string

    final xml2json = Xml2Json();
    xml2json.parse(rawResult.data);
    final jsonString = xml2json.toParker();
    final jsonObject = json.decode(jsonString);
    return BlogModel.fromJson(jsonObject["rss"]["channel"]);
  }
}
