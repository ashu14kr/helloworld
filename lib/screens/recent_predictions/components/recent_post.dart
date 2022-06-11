import 'package:flutter/material.dart';

import '../../constant/constatnt_color.dart';

class RecentPostData extends StatelessWidget {
  const RecentPostData({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: size.height/6,
        width: size.width,
        decoration: BoxDecoration(
          color: dimbackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height/7,
                    width: size.width/6,
                    decoration: BoxDecoration(
                      color: backgroundcolor,
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(image: NetworkImage("https://ss.thgim.com/incoming/article38499185.ece/alternates/LANDSCAPE_435/SPCS2033JPG"), fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: size.width/15,),
                  SizedBox(
                    height: size.height/8,
                    width: size.width/2,
                    child: const Center(child: Text("Pellentesque quis dui erat. Quisque euismod ut velit a rhoncus. Phasellus sit amet lectus sapien. Sed mi felis, scelerisque in ante nec, luctus pulvinar elit. Duis aliquet, ex et sodales facilisis,", style: TextStyle(color: Colors.white),))),
                  Container(
                    height: size.height/15,
                    width: size.width/7,
                    decoration: BoxDecoration(
                      color: backgroundcolor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: titleColor,)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: Colors.red,)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}