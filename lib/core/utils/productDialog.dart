import 'package:flutter/material.dart';

import '../../presentation/widgets/createButton.dart';
import '../../state_management/controllers/productController.dart';

void productDialog(
  BuildContext context, {
  String? sId,
  String? productName,
  int? productCode,
  String? img,
  int? qty,
  int? unitPrice,
  int? totalPrice,
}) {
  final ProductController productController = ProductController();
  TextEditingController nameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();
  TextEditingController totalPriceController = TextEditingController();

  nameController.text = productName ?? '';
  codeController.text = productCode != null ? productCode.toString() : '0';
  qtyController.text = qty != null ? qty.toString() : '0';
  imageController.text = img ?? '';
  unitPriceController.text = unitPrice != null ? unitPrice.toString() : '0';
  totalPriceController.text = totalPrice != null ? totalPrice.toString() : '0';
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(sId == null ? "Add Products" : "Edit Products"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Product Name"),
              ),
              TextField(
                controller: codeController,
                decoration: InputDecoration(labelText: "Product Code"),
              ),
              TextField(
                controller: imageController,
                decoration: InputDecoration(labelText: "Product Image"),
              ),
              TextField(
                controller: qtyController,
                decoration: InputDecoration(labelText: "Product Qty"),
              ),
              TextField(
                controller: unitPriceController,
                decoration: InputDecoration(labelText: "Product Unit Price"),
              ),
              TextField(
                controller: totalPriceController,
                decoration: InputDecoration(labelText: "Total Price"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close"),
                  ),
                  SizedBox(width: 10),
                  CreateButton(
                    productController: productController,
                    nameController: nameController,
                    codeController: codeController,
                    imageController: imageController,
                    qtyController: qtyController,
                    unitPriceController: unitPriceController,
                    totalPriceController: totalPriceController,
                  ),
                ],
              ),
            ],
          ),
        ),
  );
}
