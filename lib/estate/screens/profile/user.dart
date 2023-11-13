import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../widgets/card.dart';

//import 'card.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});
  static String id = 'user';

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  int _page = 0;
  bool _isHovered = false;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: _isHovered ? AppColors.primaryColor : AppColors.textColor,
          ),
          Icon(
            Icons.people,
            size: 30,
            color: _isHovered ? AppColors.primaryColor : AppColors.textColor,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: _isHovered ? AppColors.primaryColor : AppColors.textColor,
          ),
          Icon(
            Icons.inbox,
            size: 30,
            color: _isHovered ? AppColors.primaryColor : AppColors.textColor,
          ),
          Icon(
            Icons.chat,
            size: 30,
            color: _isHovered ? AppColors.primaryColor : AppColors.textColor,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          //_isHovered = true;
          //index = _isHovered as int;
          setState(() {
            _page = index;
            //_isHovered = true;
          });
        },
        letIndexChange: (index) => true,
      ),
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        toolbarHeight: 90,
        title: Center(
          child: Text(
            'User Account',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: null,
          ),
          CreditCardWidget(),
          myCardTag(
              'Get 3 Times More Responses',
              Icon(
                Icons.image,
                color: AppColors.primaryColor,
              ),
              'upload your photos'),
          myCardTag(
              'Partner Expectation',
              Icon(
                Icons.group,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Introduction',
              Icon(
                Icons.note,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Basic Information',
              Icon(
                Icons.error_outline,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Education and Career',
              Icon(
                Icons.school,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Physical Attributes',
              Icon(
                Icons.auto_graph,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Spiritual And Social Background',
              Icon(
                Icons.temple_buddhist,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Life Style ',
              Icon(
                Icons.local_bar,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Astronomical Information',
              Icon(
                Icons.public,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Permanent Address',
              Icon(
                Icons.dns,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Family Information ',
              Icon(
                Icons.family_restroom,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Additional Personal Details',
              Icon(
                Icons.edit_note,
                color: AppColors.primaryColor,
              ),
              ''),
          SizedBox(
            height: 24,
          ),
        ],
      )),
    );
  }

  Container myCardTag(String heading, Icon icon, String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
        leading: icon,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,
                style: TextStyle(color: AppColors.textColor, fontSize: 14)),
            Text(text,
                style: TextStyle(color: AppColors.textColor, fontSize: 10)),
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: AppColors.backGroundOne),
      ),
    );
  }
}
