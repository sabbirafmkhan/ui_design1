import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui_design1/core/utils/urls.dart';

class ProductController {
  List product = [];
  Future<void> fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      product = data['data'];
    } else {
      throw Exception('Failed to load products');
    }
  }
}
