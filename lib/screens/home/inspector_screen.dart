import 'package:flutter/material.dart';

class InspectorScreen extends StatelessWidget {
  const InspectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.work, size: 100, color: Colors.amber),
          SizedBox(height: 20),
          Text(
            'Inspector Screen',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'This is the inspector screen where inspectors can view and manage their inspection tasks.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          
        ],
      ),
    );
  }
}