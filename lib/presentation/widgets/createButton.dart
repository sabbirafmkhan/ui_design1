import 'package:flutter/material.dart';

import '../../state_management/controllers/productController.dart';

class creatButton extends StatefulWidget {
  const creatButton({
    super.key,
    required this.productController,
    required this.nameController,
    required this.codeController,
    required this.imageController,
    required this.qtyController,
    required this.unitPriceController,
    required this.totalPriceController,
  });

  final ProductController productController;
  final TextEditingController nameController;
  final TextEditingController codeController;
  final TextEditingController imageController;
  final TextEditingController qtyController;
  final TextEditingController unitPriceController;
  final TextEditingController totalPriceController;

  @override
  State<creatButton> createState() => _creatButtonState();
}

class _creatButtonState extends State<creatButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget.productController.createProduct(
            widget.nameController.text,
            int.parse(widget.codeController.text),
            widget.imageController.text,
            int.parse(widget.qtyController.text),
            int.parse(widget.unitPriceController.text),
            int.parse(widget.totalPriceController.text),
          );
          Navigator.pop(context);
        });
      },
      child: Text("Add"),
    );
  }
}
