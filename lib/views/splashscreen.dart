
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:malawi_jobs/views/auth/login.dart';

import '../constants/constants.dart';



class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});


  void navigateToHomeScreen()
  {
    var d = const Duration(seconds: 5);
    // delayed 5 seconds to next page
    // ignore: unused_local_variable
    Key key;
    Future.delayed(d, () {
      //_appInitializer.checkIfLoggedIn();
      Get.to(const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToHomeScreen();

   
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white10,
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Constants().appLogo,
                Shimmer.fromColors(
                  period : const Duration(milliseconds: 2000),
                  baseColor: Colors.black,
                  highlightColor: Colors.red,
                  child: const Text('Connecting you, to your dreams'))
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
