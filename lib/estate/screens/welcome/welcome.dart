import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView(children: [
      Container(
          width: screenWidth * 3,
          height: screenHeight * 0.7,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Image.asset(
            'assets/images/img1.jpeg',
            fit: BoxFit.cover,
          )),
    ]);
  }
}
