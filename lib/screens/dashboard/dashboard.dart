import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/components/news.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/components/offers.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/components/prediction.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/components/user_details.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/components/post_selection.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              SizedBox(
                height: size.height/30,
              ),
              const PostSelection(),
              SizedBox(
                height: size.height/30,
              ),
              Text("Recent News", style: TextStyle(color: titleColor, fontSize: 20),),
              SizedBox(
                height: size.height/50,
              ),
              const News(),
              SizedBox(
                height: size.height/30,
              ),
              Text("Recent Predictions", style: TextStyle(color: titleColor, fontSize: 20),),
              SizedBox(
                height: size.height/50,
              ),
              const Prediction(),
              SizedBox(
                height: size.height/30,
              ),
              Text("Recent Offers for betting", style: TextStyle(color: titleColor, fontSize: 20),),
              SizedBox(
                height: size.height/50,
              ),
              const Offers(),
              SizedBox(
                height: size.height/20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
