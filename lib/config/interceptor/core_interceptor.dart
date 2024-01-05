// ignore_for_file: implementation_imports, depend_on_referenced_packages

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:xml2json/xml2json.dart';

class CoreInterceptor implements Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final xml2json = Xml2Json();
    xml2json.parse(response.data);
    final jsonString = xml2json.toParker();
    final jsonObject = json.decode(jsonString);
    response.data = jsonObject["rss"]["channel"];
    handler.next(response);
  }
}
