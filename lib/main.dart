import 'package:FitnessTrackerNutritionistMobileApp/pages/details/details.dart';
import 'package:FitnessTrackerNutritionistMobileApp/pages/home/home.dart';
import 'package:FitnessTrackerNutritionistMobileApp/pages/home_page.dart';
import 'package:FitnessTrackerNutritionistMobileApp/pages/login/login_screen.dart';
import 'package:FitnessTrackerNutritionistMobileApp/pages/product_detail_page.dart';
import 'package:FitnessTrackerNutritionistMobileApp/pages/register/register_screen.dart';
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context) => LoginScreen(),
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
        '/register':(context) => RegisterScreen(),
        '/Product':(context) => ProductPage(),

      },
      initialRoute: '/Product',
    );
  }
}