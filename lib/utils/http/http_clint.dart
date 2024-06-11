import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = "";

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final res = await http.get(Uri.parse("$_baseUrl/$endpoint"));
    return _handleResponse(res);
  }

  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic date) async {
    final res = await http.post(Uri.parse("$_baseUrl/$endpoint"),
        headers: {"Content-Type": "application/json"}, body: json.encode(date));
    return _handleResponse(res);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic date) async {
    // ignore: unused_local_variable
    final res = await http.put(Uri.parse("$_baseUrl/$endpoint"),
        headers: {"Content-Type": "application/json"}, body: json.encode(date));
    throw Exception();
  }

  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final res = await http.delete(Uri.parse("$_baseUrl/$endpoint"));
    return _handleResponse(res);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("failed to load date: ${response.statusCode}");
    }
  }
}
