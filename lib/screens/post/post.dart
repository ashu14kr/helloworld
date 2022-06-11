import 'package:cricket_app_admin_pannel/screens/home/components/post_news.dart';
import 'package:flutter/material.dart';

import '../constant/constatnt_color.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: const Text("Post Updates", style: TextStyle(color: Colors.white),),
        backgroundColor: titleColor,
      ),
      body: Center(
        child: Container(
          height: size.height/3,
          width: size.width/3.5,
          decoration: BoxDecoration(
            color: dimbackground,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height/14,
                    width: size.width/6,
                    decoration: BoxDecoration(
                      color: backgroundcolor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Post News", style: TextStyle(color: Colors.white, fontSize: 16),),
                          IconButton(icon: Icon(Icons.edit, color: titleColor,), onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const PostNews()));
                          },),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height/14,
                    width: size.width/6,
                    decoration: BoxDecoration(
                      color: backgroundcolor,
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
                      color: backgroundcolor,
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
            ),
          ),
        ),
      ),
    );
  }
}