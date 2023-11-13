import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // Wrap with a Container to provide constraints
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.explore,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.verified_user_outlined,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
        ],
      ),
    );
  }
}
