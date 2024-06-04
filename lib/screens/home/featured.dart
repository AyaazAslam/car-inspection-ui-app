// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:instagra/screens/home/car_details.dart';

// class FeaturedCars extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => CarDetailScreen(
//                         car: 'Car Make Model',
//                         price: '\$Price',
//                         location: 'Location',
//                         imageUrl: 'https://via.placeholder.com/200', make: 'jhgh', model: 'ggf',)),
//               );
//             },
//             child: Card(
//               color: Colors.indigo,
//               margin: EdgeInsets.all(8.0),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               child: Container(
//                 width: 200,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(15.0),
//                             topRight: Radius.circular(15.0)),
//                         child: Image.asset('assets/images/download.jpg',
//                             fit: BoxFit.cover, width: double.infinity),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Car Make Model',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                       child: Text('\$Price',
//                           style: TextStyle(color: Colors.black)),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Location',
//                           style: TextStyle(color: Colors.black)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }