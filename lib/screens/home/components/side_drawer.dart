import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:cricket_app_admin_pannel/screens/dashboard/dashboard.dart';
import 'package:cricket_app_admin_pannel/screens/post/post.dart';
import 'package:cricket_app_admin_pannel/screens/recent-users/recent_users.dart';
import 'package:cricket_app_admin_pannel/screens/recent_news/recent_news.dart';
import 'package:cricket_app_admin_pannel/screens/recent_offers/recent_offers.dart';
import 'package:cricket_app_admin_pannel/screens/recent_predictions/recent_predictions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: dimbackground,
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height/80,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  scale: 3,
                ),
                SizedBox(
                  height: size.height/30,
                ),
                const Text("Its Ashutosh Kumar", style: TextStyle(color: Colors.white),)
              ],
            )),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())));
              },
            ),
            DrawerListTile(
              title: "Posts",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Post())));
              },
            ),
            DrawerListTile(
              title: "Recent News",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const RecentNews())));
              },
            ),
            DrawerListTile(
              title: "Recent Offers",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const RecentOffers())));
              },
            ),
            DrawerListTile(
              title: "Recent Predictions",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const RecentPredictions())));
              },
            ),
            DrawerListTile(
              title: "Users",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const RecentUsers())));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}