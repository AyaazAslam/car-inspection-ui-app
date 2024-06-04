// import 'package:flutter/material.dart';

// class BookInspection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             child: Padding(
//               padding: EdgeInsets.zero,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Quick Access to Book an Inspection',
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Car Make/Model',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'VIN Number',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Preferred Date/Time',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'City Address',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Car Location',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Seller Contact Info',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Additional Car Info',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           height: 50,
//                           width: 250,
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             child: Text('Book Now'),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class RequestInspection extends StatelessWidget {
  const RequestInspection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Inspection Type',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the inspection type';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Car Location',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the car location';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Seller Contact',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the seller contact';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'VIN Number',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the VIN number';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'City Address',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the city address';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contact Info',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the contact info';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 123, 139, 227), // Button color
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {},
              child: const Text(
                'Submit Request',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}