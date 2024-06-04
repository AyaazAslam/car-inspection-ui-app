import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final String make;
  final String model;
  final String price;

  CarDetailScreen({required this.make, required this.model, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Make: $make',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Model: $model',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Price: $price',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
