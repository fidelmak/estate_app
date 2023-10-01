import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'package:rich_text_widget/rich_text_widget.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        color: EstateColors.secondary,
        child: ListView(children: [
          Align(
            alignment: Alignment.centerRight, // Align text to the left
            child: Text(
              'Skip',
              style: TextStyle(color: EstateColors.primary, fontSize: 20),
            ), // Button text
          ),
          Container(
              width: screenWidth * 3,
              height: screenHeight * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Image.asset(
                'assets/images/search2.jpeg',
                fit: BoxFit.contain,
              )),
          SizedBox(height: 2),
          Container(
              width: 200, // Set the width of the container
              height: 300, // Set the height of the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(50.0), // Radius for the top-left corner
                  topRight:
                      Radius.circular(50.0), // Radius for the top-right corner
                ), // Set the border radius here
                color: Colors.white, // Set the background color
              ),
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Center(
                        child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black, // Default color for the text
                          fontSize: 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Discover',
                            style: TextStyle(
                              color: EstateColors
                                  .primary, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' listed \n Homes ',
                            style: TextStyle(
                              color: Colors.black, // Blue color for "House"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' House ',
                            style: TextStyle(
                              color: EstateColors
                                  .primary, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(height: 35),
                    Text(
                      "Discover more houses  \n for rent ",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: screenWidth * 0.6,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: EstateColors.primary, // Button color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50.0), // Border radius
                            ),
                            minimumSize: Size(
                                200.0, 48.0), // Width and height of the button
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/onboard_one');
                          },
                          child: Text("Let's Get Started")),
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'wanna explore ? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'search more details ',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Sign in');
                                // Add your navigation logic here or perform any other action.
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ])),
        ]),
      ),
    );
  }
}
