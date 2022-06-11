import 'package:flutter/material.dart';

import 'components/side_drawer.dart';
import '../dashboard/dashboard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
              Expanded(
                child: SideDrawer(),
              ),
            Expanded(
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}