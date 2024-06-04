// class TopRatedCars extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => CarDetailScreen(
//                       car: 'Car Make Model',
//                       price: '\$Price',
//                       location: 'Location',
//                       imageUrl: 'https://via.placeholder.com/200')),
//             );
//           },
//           child: Card(
//             color: Colors.indigo,
//             margin: EdgeInsets.all(8.0),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(15.0),
//                         topRight: Radius.circular(15.0)),
//                     child: Image.asset('assets/images/blackcar.jpg',
//                         fit: BoxFit.cover, width: double.infinity),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('Car Make Model',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black)),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text('\$Price', style: TextStyle(color: Colors.black)),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('Rating', style: TextStyle(color: Colors.black)),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }