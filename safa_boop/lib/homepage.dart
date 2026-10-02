import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: const Color.fromARGB(255, 41, 7, 23),
        foregroundColor: const Color.fromARGB(255, 207, 16, 131),
        //leading: Icon(Icons.home),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Safa"),
              accountEmail: Text("safazx69@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 108, 105, 41),
              title: Text("Homepage"),
              onTap: () {},
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: Colors.blueGrey,
              title: Text("Settings"),
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: const Color.fromARGB(255, 57, 94, 134),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to the class",
          style: GoogleFonts.lobster(
            fontSize: 40,
            color: const Color.fromARGB(255, 101, 47, 110),
          ),
        ),
      ),
    );
  }
}
