import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:flutter/material.dart';

class PostSelection extends StatelessWidget {
  const PostSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 400.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height/14,
            width: size.width/8,
            decoration: BoxDecoration(
              color: dimbackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Post News", style: TextStyle(color: Colors.white, fontSize: 16),),
                  IconButton(icon: Icon(Icons.edit, color: titleColor,), onPressed: (){},),
                ],
              ),
            ),
          ),
          Container(
            height: size.height/14,
            width: size.width/6,
            decoration: BoxDecoration(
              color: dimbackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Post Your Prediction", style: TextStyle(color: Colors.white, fontSize: 16),),
                  IconButton(icon: Icon(Icons.edit, color: titleColor,), onPressed: (){},),
                ],
              ),
            ),
          ),
          Container(
            height: size.height/14,
            width: size.width/6,
            decoration: BoxDecoration(
              color: dimbackground,
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Post Your Betting Offers", style: TextStyle(color: Colors.white, fontSize: 16),),
                  IconButton(icon: Icon(Icons.edit, color: titleColor,), onPressed: (){},),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}