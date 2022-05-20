import 'package:dietera/pages/home/widgets/activity.dart';
import 'package:dietera/pages/home/widgets/current.dart';
import 'package:dietera/pages/home/widgets/header.dart';
import 'package:dietera/widgets/bottom_navigation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),


        ],
      ),
    );
  }
}
