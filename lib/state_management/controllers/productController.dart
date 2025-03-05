import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui_design1/core/utils/urls.dart';

import '../../data/models/productModel.dart';

class ProductController {
  List<Data> products = [];
  Future<void> fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createProduct(
    String productName,
    int productCode,
    String img,
    int qty,
    int unitPrice,
    int totalPrice,
  ) async {
    final response = await http.post(
      Uri.parse(Urls.createProduct),
      body: jsonEncode({
        "ProductName": productName,
        "ProductCode": productCode,
        "Img": img,
        "Qty": qty,
        "UnitPrice": unitPrice,
        "TotalPrice": totalPrice,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      fetchProducts();
    } else {
      throw Exception('Failed to create product: ${response.body}');
    }
  }
}
