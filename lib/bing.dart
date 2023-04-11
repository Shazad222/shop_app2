import 'package:flutter/material.dart';

class AddProductPage2 extends StatefulWidget {
  @override
  _AddProductPage2State createState() => _AddProductPage2State();
}

class _AddProductPage2State extends State<AddProductPage2> {
  final _formKey = GlobalKey<FormState>();
  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  final _productSalePriceController = TextEditingController();
  final _productWholesalePriceController = TextEditingController();

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescriptionController.dispose();
    _productSalePriceController.dispose();
    _productWholesalePriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _productNameController,
                decoration: InputDecoration(
                  labelText: 'Product Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter product name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _productDescriptionController,
                decoration: InputDecoration(
                  labelText: 'Product Description',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter product description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _productSalePriceController,
                decoration: InputDecoration(
                  labelText: 'Sale Price',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter sale price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _productWholesalePriceController,
                decoration: InputDecoration(
                  labelText: 'Wholesale Price',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO add product to database
                    Navigator.pop(context);
                  }
                },
                child: Text('Add Product'),
              )
            ],
          ),
        ),
      ),
    );
  }
}