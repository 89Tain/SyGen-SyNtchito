
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controllers/lc.controllers_Initializer.dart';
import 'views/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Controllers.initializeControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      title: 'Umodzi Park',
      defaultTransition: Transition.fadeIn,
      theme: ThemeData(
        fontFamily: 'quicksand',
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreenView(),
      //home: SavedJobs(),
    );
  }
}
