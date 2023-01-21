import 'dart:html';
import 'dart:io';

import 'package:mvvm_practice/data/app_exceptions.dart';
import 'package:mvvm_practice/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponce(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostApiResponce(String url) {
    // TODO: implement getPostApiResponce
    throw UnimplementedError();
  }
}
