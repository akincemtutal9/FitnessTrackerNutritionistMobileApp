import 'package:fitnessnutritionist/pages/home/widgets/activity.dart';
import 'package:fitnessnutritionist/pages/home/widgets/current.dart';
import 'package:fitnessnutritionist/pages/home/widgets/header.dart';
import 'package:fitnessnutritionist/widgets/bottom_navigation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeader(),
        CurrentPrograms(),
        RecentActivities(),
        BottomNavigation(),


      ],
    );
  }
}
