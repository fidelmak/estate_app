import 'package:flutter/material.dart';

import '../../../widgets/big_button.dart';
import '../../../widgets/special_button.dart';
import '../../../widgets/kTextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Sign in",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            " HI!! Welcome back you have been missed",
            style: TextStyle(fontSize: 15, color: Color(0xD89E9E9E)),
          ),
          SizedBox(
            height: 30,
          ),
          KtextField(
            littleLabel: 'Email',
            littleHint: 'Email@gmail.com',
            obscureText: false,
          ),
          SizedBox(
            height: 10,
          ),
          KtextField(
            obscureText: true,
            littleLabel: 'Password',
            littleHint: 'input a strong password',
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                onPressed: () {},
                child: const Text("forget password",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ))),
            SizedBox(
              width: 90,
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          BigButton(
            label: Text(
              "Sign-in",
              style: TextStyle(color: Colors.white),
            ),
            goTo: () {},
            bgColor: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            " or Sign in with ",
            style: TextStyle(
              fontSize: 11,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  // Handle the click for the first image
                  // You can navigate to a new screen or perform some action here
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/icon1.png'), // Replace with your image source
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle the click for the second image
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/icon2.png'), // Replace with your image source
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle the click for the third image
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/icon3.png'), // Replace with your image source
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
