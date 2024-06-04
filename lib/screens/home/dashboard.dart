import 'package:flutter/material.dart';
import 'package:instagra/screens/home/book_inspection.dart';
import 'package:page_transition/page_transition.dart';

class BuyerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        width: 270,
        margin: EdgeInsets.all(16),
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    child: RequestInspection(),
                    type: PageTransitionType.bottomToTop,
                    childCurrent: RequestInspection(),
                    duration: Duration(milliseconds: 900)));
          },
          label: Text('Request Inspection'),
          icon: Icon(Icons.add),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'Inspections'),
              RecentInspections(),
              SectionTitle(title: 'Saved Inspections'),
              SavedCars(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class RecentInspections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset("assets/images/bgcar.png", fit: BoxFit.cover),
            ),
            title:
                Text('Car Make Model', style: TextStyle(color: Colors.black)),
            subtitle:
                Text('Inspection Date', style: TextStyle(color: Colors.black)),
            trailing: SizedBox(
              height: 40,
              width: 80,
              child: Card(
                color: Color.fromARGB(255, 181, 190, 239),
                child: Center(
                    child:
                        Text('Rating', style: TextStyle(color: Colors.white))),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CarDetailScreen(
                        car: 'Car Make Model',
                        price: '\$Price',
                        location: 'Location',
                        imageUrl: 'https://via.placeholder.com/200')),
              );
            },
          ),
        );
      }),
    );
  }
}

class SavedCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/blue.png', fit: BoxFit.cover),
            ),
            title:
                Text('Car Make Model', style: TextStyle(color: Colors.black)),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.black),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CarDetailScreen(
                        car: 'Car Make Model',
                        price: '\$Price',
                        location: 'Location',
                        imageUrl: 'https://via.placeholder.com/200')),
              );
            },
          ),
        );
      }),
    );
  }
}

class CarDetailScreen extends StatelessWidget {
  final String car;
  final String price;
  final String location;
  final String imageUrl;

  CarDetailScreen(
      {required this.car,
      required this.price,
      required this.location,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(imageUrl,
                  height: 250, width: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(car,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Price: $price', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Location: $location', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(
              'Car Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'This is where the detailed information about the car goes. It includes specifications, features, inspection details, and any other relevant information that a buyer might need to make an informed decision.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
