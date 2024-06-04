import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagra/screens/home/chatgptbuyerscreen.dart';
import 'package:instagra/screens/home/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 123, 139, 227),
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(
            "Car Inspection",
            style: GoogleFonts.aldrich(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white, // Set the drawer icon color to white
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.amber,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.white),
                child: Text(
                  "Consumer",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.white),
                child: Text(
                  "Inspector",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 123, 139, 227),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/logo.jpg"),
                      radius: 40,
                    ),
                    Text(
                      "Eyes on rides",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "eyesonrides@gmail.com",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: Text(
                  "Profile",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.badge,
                ),
                title: Text(
                  "Name",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.palette,
                ),
                title: Text(
                  "Theme",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: Text(
                  "Settings",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                ),
                title: Text(
                  "Help",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [BuyerDashboard(), BuyerScreen()],
        ),
      ),
    );
  }
}
