import 'package:flutter/material.dart';

class SearchAndFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for Cars...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              FilterChip(label: Text('Make'), onSelected: (bool value) {}),
              FilterChip(label: Text('Model'), onSelected: (bool value) {}),
              FilterChip(label: Text('Year'), onSelected: (bool value) {}),
              FilterChip(label: Text('Price'), onSelected: (bool value) {}),
              FilterChip(label: Text('Mileage'), onSelected: (bool value) {}),
              FilterChip(label: Text('Location'), onSelected: (bool value) {}),
            ],
          ),
        ],
     ),
);
}
}