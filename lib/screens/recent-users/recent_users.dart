import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:cricket_app_admin_pannel/screens/recent-users/components/user_details.dart';
import 'package:flutter/material.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: const Text("Recent Users", style: TextStyle(color: Colors.white),),
        backgroundColor: titleColor,
      ),
      body: Column(
        children: const [
          UserDetails()
        ],
      ),
    );
  }
}