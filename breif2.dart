import 'package:flutter/material.dart';
import 'package:hackathon/exp2.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class brief2 extends StatefulWidget {
  const brief2({super.key});

  @override
  State<brief2> createState() => _brief2State();
}

class _brief2State extends State<brief2> {
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
    child: Text("Road safety Laws",style: GoogleFonts.outfit(
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
                              MaterialPageRoute(builder: (context) =>exp2() ),
                            );// Navigate back when tapped
          
        },
        child: Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 4, 7, 45),
          child: Center(
            child: Text(
              "Section 279 - Rash Driving or Riding on a Public Way",
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
              "Section 304A - Causing Death by Negligence",
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
              "Section 338 - Causing Grievous Hurt by Act Endangering Life or Personal Safety",
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
              "Section 339 - Wrongful Restraint",
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