import 'package:flutter/material.dart';
import 'package:hackathon/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class brief extends StatefulWidget {
  const brief({super.key});

  @override
  State<brief> createState() => _briefState();
}

class _briefState extends State<brief> {
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
    child: Text("Civil laws",style: GoogleFonts.outfit(
                        color: Colors.white,
                        
                        fontSize: 20,
                      ),),
  ),

  
),
body: ListView(
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
              "Section 403 IPC: Dishonest Misappropriation of Property",
              style: TextStyle(color: Colors.white,),
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
              "Section 415 IPC: Cheating",
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
              "Section 379 IPC: Theft",
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
              "Section 420 IPC: Cheating and Dishonestly Inducing Delivery of Property",
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
              "Section 405 IPC: Criminal Breach of Trust",
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
              "Section 500 IPC: Defamation",
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