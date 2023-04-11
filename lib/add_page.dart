import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  String _productName = '';
  late double _salePrice;
  late double _wholesalePrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter product name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter product name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productName = value!;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: 'Enter sale price',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter sale price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salePrice = double.parse(value!);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: 'Enter wholesale price',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter wholesale price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _wholesalePrice = double.parse(value!);
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Save the product details to the database or any other data source
      // Here, we'll just print them to the console
      print('Product Name: $_productName');
      print('Sale Price: $_salePrice');
      print('Wholesale Price: $_wholesalePrice');
      // Show a success message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Product added successfully!'),
        ),
      );
    }
  }
}
