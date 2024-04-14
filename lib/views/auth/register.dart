import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/constants/constants.dart';
import 'package:malawi_jobs/views/auth/login.dart';

import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import '../../widgets/searchable_drop_down.dart';
import '../home.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body:SafeArea(
            left: false,
            right: false,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(

                        children: [
                        Constants().appLogo,
                        const SizedBox(height: 50,),
                        const Text('Register',style: TextStyle(color: Colors.blueAccent,fontSize: 20,),),
                        const SizedBox(height: 10,),
                        

                        CustomTextfield(controller: TextEditingController(),hint: 'Full Name',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Email',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Phone Number',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Password',isPassword: true,),
                         SearchableDropDownCustom(
                          items: const ['Blantyre','Lilongwe','Mzuzu','Zomba','Others'], 
                          hint: 'City',
                          controller:TextEditingController()
                        ),
                        const Text('Gender'),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            CurvedButton(text: 'Male', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                            const SizedBox(width: 5,),
                            CurvedButton(text: 'Female', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Preferences(*can select multiple)'),
                        ),
                       
                        SizedBox(
                          height: 20,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CurvedButton(text: 'Engineering & Technology', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Social Sciences & Arts', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Construction and Manufacturing', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Health Care', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Finance and Marketing', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Hospitality and Care', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                               const SizedBox(width: 5,),
                              CurvedButton(text: 'House and outdoor care', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              const SizedBox(width: 5,),
                              CurvedButton(text: 'Other', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                            ]
                          ),
                        ),
                        const Text('Allow Notifications'),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            CurvedButton(text: 'Yes', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                            const SizedBox(width: 5,),
                            CurvedButton(text: 'No', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                          ],
                        ),
                        const SizedBox(height: 10,),
                         CurvedButton(
                          text: 'Register', textColor: Colors.white,buttonColor: Constants().primaryColor,borderColor: Colors.white, onPressed: (){Get.to(Homeview());},height: 40,fontSize: 18,width: MediaQuery.of(context).size.width,),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(onPressed: (){Get.to(const LoginView());}, child: const Text('Return')))
                        
                      

                      
                        
                       

                        ]
                      ),
            ),
          ),
    );
  }


 

  
}
