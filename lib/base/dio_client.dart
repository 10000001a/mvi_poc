import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<Dio> dioProvider = Provider<Dio>(
  (Ref ref) => DioClient.dio,
);

class DioClient {
  factory DioClient() => DioClient._();
  DioClient._();

  static final Dio _dio = Dio();

  static Dio get dio => _dio
    ..options = BaseOptions(
      baseUrl: 'https://hacker-news.firebaseio.com/v0/',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    );
}
