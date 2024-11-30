import 'package:flutter/material.dart';

import 'homepage.dart';

class exp1 extends StatefulWidget {
  const exp1({Key? key}) : super(key: key);

  @override
  State<exp1> createState() => _exp1State();
}

class _exp1State extends State<exp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(color: Colors.white,
    onPressed: () {
      Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) =>Homepage() ),
                            );// Navigate back when tapped
    },
    icon: Icon(Icons.arrow_back_ios), // Replace with your desired icon
  ),

        backgroundColor: Colors.black,
        title: Text(
          'Section 153',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: MyExtendedContainer(),
    );
  }
}

class MyExtendedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Spans the entire width
      height: double.infinity, // Spans the entire height
      color: Color.fromARGB(255, 4, 7, 45), // Example background color
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the text
        child: SingleChildScrollView( // Allows scrolling if the text is too long
          child: Text(
            '''- Description: This section addresses the offense of causing mischief by damaging or
tampering with railway signals. Railway signals are critical for the safe and orderly operation of
trains, guiding them on their routes and controlling train movements.


- Purpose: The intent of this section is to prevent and penalize actions that could disrupt the
signaling system, thereby compromising railway safety and operations.


- Penalties: Individuals found guilty under this section may face imprisonment and/or fines. The
severity of the penalty can vary based on the extent of the damage and the potential risk posed
to public safety.''',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: exp1()));
}

