import 'package:flutter/material.dart';

import '../../constant/constatnt_color.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/2.4,
      width: size.width,
      decoration: BoxDecoration(
        color: dimbackground,
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: size.height/2.8,
            width: size.width/4,
            decoration: BoxDecoration(
              color: backgroundcolor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      height: size.height/4.5,
                      width: size.width/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: dimbackground,
                        image: const DecorationImage(image: NetworkImage("https://ss.thgim.com/incoming/article38499185.ece/alternates/LANDSCAPE_435/SPCS2033JPG"), fit: BoxFit.cover)
                      ),
                  ),
                  SizedBox(height: size.height/70,),
                  const Center(child: Text("Pellentesque quis dui erat. Quisque euismod ut velit a rhoncus. Phasellus sit amet lectus sapien. Sed mi felis, scelerisque in ante nec, luctus pulvinar elit. Duis aliquet, ex et sodales facilisis,", style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}