import 'package:flutter/material.dart';

import 'homepage.dart';

class exp2 extends StatefulWidget {
  const exp2({Key? key}) : super(key: key);

  @override
  State<exp2> createState() => _exp2State();
}

class _exp2State extends State<exp2> {
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
          'Section 279',
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
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 4, 7, 45),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''● Description:
○ This section addresses driving or riding in a manner that is reckless or negligent,
endangering the safety of others. Examples include excessive speeding,
aggressive lane changes, or failing to obey traffic signals.
● Legal Implications:
○ Penalty: Conviction under Section 279 can lead to imprisonment for up to 6
months, a fine up to ₹1,000, or both. The exact penalty depends on the severity
of the offense and whether it resulted in harm''',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: exp2()));
}
