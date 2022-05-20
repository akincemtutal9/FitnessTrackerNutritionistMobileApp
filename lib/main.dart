// ignore_for_file: prefer_const_constructors

import 'package:dietera/pages/details/details.dart';
import 'package:dietera/pages/home/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: DetailsPage(),



    );
  }
}
