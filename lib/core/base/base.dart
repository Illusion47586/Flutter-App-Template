import 'package:logger/logger.dart';

import 'dio.dart';
import 'logger.dart';

mixin Base<T> {
  final Logger log = getLogger(T.toString());
  final Future<dynamic> Function(Uri) getRequestUsingURI =
      RequestHelper.getRequest;
  final Future<bool> Function(String, String) downloadImage =
      RequestHelper.downloadImage;
}
