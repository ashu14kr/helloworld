import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello, Ashutosh 👋",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Wellcome to your dashboard",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: dimbackground,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
              SizedBox(width: 10,),
              Text(
                    "Ashutosh kumar",
                    style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
    );
  }
}