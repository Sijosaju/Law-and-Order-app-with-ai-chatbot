import 'package:flutter/material.dart';
import 'homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    spl();
  }

  void spl()async
  {
    await Future.delayed(Duration(seconds: 4));
  
    
    
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Homepage()),
  );
 
  
   
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.white,
    body: 
    Center(
      child:Container(
        width: 110,
        height: 110,
        child: Image.network("https://s3.amazonaws.com/ionic-marketplace/law-app-multiple-use-app/icon.png")) 
    ),
    );
  }
}