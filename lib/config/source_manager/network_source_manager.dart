import 'package:dio/dio.dart';

class NetworkSourceManager {
  late Dio networkManager;
  NetworkSourceManager() {
    networkManager = Dio(
      BaseOptions(
        validateStatus: (status) => status == 200 || status == 204,
        headers: {"signed_by": "Zafer Çetin"},
      ),
    );
  }
}
