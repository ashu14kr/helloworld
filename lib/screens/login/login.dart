import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/dashboard.dart';
import 'package:cricket_app_admin_pannel/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/text_input_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("assets/images/logo.png"),
              radius: size.height/15,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: size.height/20,
            ),
            Center(child: loginScreen(context))
          ],
        ),
      );
  }

   loginScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/3.5,
      width: size.width/4,
      child: Column(
            children: [
              InputWidget(
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                onChanged: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },

                topLabel: "Email",

                hintText: "Enter E-mail",
                // prefixIcon: FlutterIcons.chevron_left_fea,
              ),
              SizedBox(height: size.height/100),
              InputWidget(
                topLabel: "Password",
                obscureText: true,
                hintText: "Enter Password",
                onSaved: (String? uPassword) {},
                onChanged: (String? value) {},
                validator: (String? value) {},
              ),
              SizedBox(height: size.height/40),
              AppButton(
                text: "Log In",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),          
            ],
          ),
    );
  }
}