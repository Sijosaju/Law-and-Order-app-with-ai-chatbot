import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';
import 'exp1.dart';

class breif1 extends StatefulWidget {
  const breif1({super.key});

  @override
  State<breif1> createState() => _breif1State();
}

class _breif1State extends State<breif1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
  leading: IconButton(color: Colors.white,
    onPressed: () {
      Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) =>Homepage() ),
                            );// Navigate back when tapped
    },
    icon: Icon(Icons.arrow_back_ios), // Replace with your desired icon
  ),
  title: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Railway Laws",style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
  ),

  
),
body:  ListView(
  children: [
    // Container 1
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => exp1()),
                      );
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45),
          child: Center(
            child: Text(
              "Section 153: Mischief to Railway Signals",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),

    // Container 2 (Repeat the structure for other containers)
    // ...

    // Container 10
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          print("Container 10 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45), // Example different color
          child: Center(
            child: Text(
              "Section 154: Obstruction of Railway Services",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          print("Container 10 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color:Color.fromARGB(255, 4, 7, 45), // Example different color
          child: Center(
            child: Text(
              "Section 155: Introduction of Harmful Substances",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          print("Container 10 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45), // Example different color
          child: Center(
            child: Text(
              "Section 168: Falsification of Railway Records",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          print("Container 10 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45), // Example different color
          child: Center(
            child: Text(
              "Section 174: Negligence Leading to Injury or Death",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle the click action for this container
          print("Container 10 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45), // Example different color
          child: Center(
            child: Text(
              "Section 174: Negligence Leading to Injury or Death",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  ],
),

 );
  }
}