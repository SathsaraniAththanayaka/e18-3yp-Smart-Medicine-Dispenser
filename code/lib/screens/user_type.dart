import 'package:dispensa/screens/doctor.dart';
import 'package:dispensa/screens/guardian.dart';
import 'package:dispensa/screens/nurse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../config.dart';
import '../widgets/hero_image.dart';
import '../widgets/hero_title.dart';
import '../widgets/rounded_elevated_button.dart';

class UserType extends StatefulWidget {
  const UserType({super.key});

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Select User'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.settings))
        ],
      ),
      
      body: Center(
        child: Column(
          
          children: 
            
            [
              SizedBox(height: 10,),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.green,
                child: Column(
                  children: [
                    InkWell(
                    splashColor: Colors.blueAccent,
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) =>
                        DoctorCredentials(),
                        ),
                      );
                    },
                    child: Ink.image(
                      
                    image:AssetImage('assets/doctor.png'),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,),     
                          ),
                          SizedBox(height: 10,),
                          Text('I\'m a Doctor',
                          style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            SizedBox(height: 10,),
            Material(
                color: Colors.pinkAccent,
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    InkWell(
                    splashColor: Colors.blueAccent,
                    onTap:() {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) =>
                        NurseCredentials(),
          ),
        );
                    },
                    child: Ink.image(
                      
                    image:AssetImage('assets/nurse.png'),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,),     
                          ),
                          SizedBox(height: 10,),
                          Text('I\'m a Nurse',
                          style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            
            SizedBox(height: 10,),
            Material(
                color: Colors.blue,
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    InkWell(
                    splashColor: Colors.blueAccent,
                    onTap:() {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) =>
                          GuardianCredentials(),
                        ),
                      );
                    },
                    child: Ink.image(
                      
                    image:AssetImage('assets/guardian.png'),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,),     
                          ),
                          SizedBox(height: 10,),
                          Text('I\'m a Guardian',
                          style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            

            
          ],
          
          
        ),
      )
      );
    
  }
}