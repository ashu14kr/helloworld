import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:flutter/material.dart';

import 'components/recent_post.dart';


class RecentPredictions extends StatelessWidget {
  const RecentPredictions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: const Text("RecentNews"),
        backgroundColor: titleColor,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: ((context, index) {
          return RecentPostData(size: size);
      })),
    );
  }
}