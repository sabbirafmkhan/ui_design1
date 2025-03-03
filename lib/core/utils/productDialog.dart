import 'package:flutter/material.dart';

void productDialog(BuildContext context) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("Add Products"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(decoration: InputDecoration(labelText: "Product Name")),
              TextField(decoration: InputDecoration(labelText: "Product Code")),
              TextField(
                decoration: InputDecoration(labelText: "Product Image"),
              ),
              TextField(decoration: InputDecoration(labelText: "Product Qty")),
              TextField(
                decoration: InputDecoration(labelText: "Product UnitPrice"),
              ),
              TextField(decoration: InputDecoration(labelText: "TotalPrice")),
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
                  ElevatedButton(onPressed: () {}, child: Text("Add")),
                ],
              ),
            ],
          ),
        ),
  );
}
