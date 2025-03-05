import 'package:flutter/material.dart';

import '../../presentation/widgets/createButton.dart';
import '../../state_management/controllers/productController.dart';

void productDialog(BuildContext context) {
  final ProductController productController = ProductController();

  TextEditingController nameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();
  TextEditingController totalPriceController = TextEditingController();
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("Add Products"),
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
                  createButton(
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
