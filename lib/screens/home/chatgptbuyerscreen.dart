import 'package:flutter/material.dart';
import 'package:instagra/screens/home/book_inspection.dart';
import 'package:page_transition/page_transition.dart';

class BuyerScreen extends StatefulWidget {
  const BuyerScreen({super.key});

  @override
  _BuyerScreenState createState() => _BuyerScreenState();
}

class _BuyerScreenState extends State<BuyerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        width: 270,
        margin: EdgeInsets.all(16),
        child: ElevatedButton.icon(
          onPressed: () {},
          label: Text('New Inspection'),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
