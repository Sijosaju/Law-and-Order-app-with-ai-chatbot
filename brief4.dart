import 'package:flutter/material.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class brief4 extends StatefulWidget {
  const brief4({super.key});

  @override
  State<brief4> createState() => _brief4State();
}

class _brief4State extends State<brief4> {
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
    child: Text("Criminal Laws",style: GoogleFonts.outfit(
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
              "Murder (Section 300 and 302 IPC)",
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
              "Culpable Homicide Not Amounting to Murder (Section 299 and 304 IPC)",
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
              "Rape (Section 375 and 376 IPC)",
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
              " Kidnapping (Section 359 and 363 IPC)",
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
              "Assault (Section 351 and 352 IPC)",
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