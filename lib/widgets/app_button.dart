import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;

  const AppButton({this.onPressed, this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: titleColor,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: const [
            BoxShadow(
                //color: Color.fromRGBO(169, 176, 185, 0.42),
                //spreadRadius: 0,
                //blurRadius: 3.0,
                //offset: Offset(0, 2),
                )
          ],
        ),
        child: Center(
          child: Text(text!,
          style: const TextStyle(
            color: Colors.black,
          ),
          ),
        ),
      ),
    );
  }
}
