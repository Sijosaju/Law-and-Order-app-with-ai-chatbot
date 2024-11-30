import 'package:flutter/material.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class brief5 extends StatefulWidget {
  const brief5({super.key});

  @override
  State<brief5> createState() => _brief5State();
}

class _brief5State extends State<brief5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    child: Text("Medical Laws",style: GoogleFonts.outfit(
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
          print("Container 1 tapped!");
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45),
          child: Center(
            child: Text(
              "Clinical Establishments Act",
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
              "Medical Termination of Pregnancy (MTP) Act",
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
              "Mental Healthcare Act",
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
              "Maintenance and Welfare of Parents and Senior Citizens (Amendment) Bill, 2019",
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