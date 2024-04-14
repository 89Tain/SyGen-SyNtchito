import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/views/home.dart';
import 'package:malawi_jobs/views/jobs/profile.dart';
import 'package:malawi_jobs/views/jobs/saved_jobs.dart';

import 'bottom_nav_item.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  int currentTab;

  

  BottomNav({super.key,  required this.currentTab});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            BottomNavItem(
              text: 'Saved',
              icon: 'saved.png',
              onPressed: () {
                Get.to(SavedJobs());
              },
            ),
              BottomNavItem(
              text: 'Home',
              icon: 'home.png',
              onPressed: () {
                Get.to(Homeview());
                
              },
            ),
          
           
            BottomNavItem(
              text: 'Profile',
              icon: 'profile.png',
              onPressed: () {
                Get.to(const ProfileJobs());                
               
              },
            )
          ],
        ),
      ),
    );
  }
}
