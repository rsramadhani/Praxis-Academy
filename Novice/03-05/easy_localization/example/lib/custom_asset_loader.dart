import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class JsonAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String string) => Future.value({});
}

class FileAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String localePath) async {
    final file = File(localePath);
    return json.decode(await file.readAsString());
  }
}

class NetworkAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String localePath) async {
    try{
      return http
          .get(localePath)
          .then((response) => json.decode(response.body.toString()));
    }catch (e){
      //Catch network exceptions
      debugPrint(e.toString());
      return Future.value();
    }
  }
}

class TestsAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String localePath) async {
    final byteData = await rootBundle.load(localePath);
    return json.decode(utf8.decode(byteData.buffer.asUint8List()));
  }
}
