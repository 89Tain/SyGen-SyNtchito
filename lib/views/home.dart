
import 'package:flutter/material.dart';
import 'package:malawi_jobs/widgets/job_item.dart';
import '../constants/constants.dart';
import '../widgets/bottom_nav.dart';



// ignore: must_be_immutable
class Homeview extends StatelessWidget {

  var jobItems=['https://images.africanfinancials.com/mw-tnm-logo.png',
              'https://s3-ap-southeast-1.amazonaws.com/bsy/iportal/images/airtel-logo-white-text-vertical.jpg',
              'https://play-lh.googleusercontent.com/yI8lh_Ahhu2qlovLC9F2_URmowf_82iLvi7GJuXsB0n2kXvg-Xkn02QHubT3Dh6Uis0',

              'https://careersmw.com/wp-content/uploads/2022/02/Illovo-Malawi-Logo-e1645145408733.jpg',
              'https://careersmw.com/wp-content/uploads/2023/12/GHC-150x150.png',
              'https://careersmw.com/wp-content/uploads/2023/09/malawi-bureau-of-standards-mbs-1-150x150.jpg',
              'https://careersmw.com/wp-content/uploads/2020/05/Malawi-Government-150x150.jpg',
              'https://careersmw.com/wp-content/uploads/2018/04/unicef-150x150.jpg',
              'https://careersmw.com/wp-content/uploads/2023/05/Careers-Consulting-Ltd-Logo-e1683096177902-150x150.jpg',
              'https://jobsearchmalawi.com/wp-content/uploads/2021/01/Link-Community-Development-Malawi-150x150.jpeg',
              'https://jobsearchmalawi.com/wp-content/uploads/job-manager-uploads/company_logo/2022/07/Asamala-logo-for-2-150x150.jpg',
              ];

  Homeview({super.key});

  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      body: SafeArea(
        child: Center(
          child:  ListView(
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Constants().appLogo,
                  Container(
                    margin: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Available Jobs',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                      const IconButton(onPressed: null, icon: Icon(Icons.sort_sharp))
                    ],) ),
                ],
              ),
              JobItem(picture: jobItems[0], category: 'House care', companyName: 'TNM', location: 'Blantyre', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[1], category: 'House care', companyName: 'Airtel', location: 'Mnneo', jobTitle: 'IT Manager',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[2], category: 'House care', companyName: 'Amaryllis', location: 'Mangochi', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[3], category: 'House care', companyName: 'TNM', location: 'Thyolo', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[4], category: 'House care', companyName: 'Airtel', location: 'Lirangwe', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[5], category: 'House care', companyName: 'Amaryllis', location: 'Dowa', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[6], category: 'House care', companyName: 'TNM', location: 'Zalewa', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[3], category: 'House care', companyName: 'Airtel', location: 'Mangochi', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[5], category: 'House care', companyName: 'Amaryllis', location: 'Lilongwe', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[1], category: 'House care', companyName: 'TNM', location: 'Blantyre', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[0], category: 'House care', companyName: 'Airtel', location: 'Mangochi', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              JobItem(picture: jobItems[2], category: 'House care', companyName: 'Amaryllis', location: 'Lilongwe', jobTitle: 'Network Engineer',postedDate: '11-06-23',expiryDate: '12-17-24',),
              const SizedBox(height: 100,)
            ])),
      ));
          
  }
}
