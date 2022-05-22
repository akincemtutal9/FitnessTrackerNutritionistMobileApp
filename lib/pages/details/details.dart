import 'package:dietera/pages/details/widgets/dates.dart';
import 'package:dietera/pages/details/widgets/graph.dart';
import 'package:dietera/pages/details/widgets/info.dart';
import 'package:dietera/pages/details/widgets/stats.dart';
import 'package:dietera/pages/details/widgets/steps.dart';
import 'package:dietera/widgets/bottom_navigation.dart';
import 'package:dietera/pages/details/widgets/appbar.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBar: AppBar(),),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}

