import 'package:dispensa/screens/fake/done.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../widgets/rounded_elevated_button.dart';

class Finished extends StatefulWidget {
  const Finished({super.key});

  @override
  State<Finished> createState() => _FinishedState();
}

class _FinishedState extends State<Finished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              SizedBox(height: 50,),
              Lottie.network("https://assets7.lottiefiles.com/private_files/lf30_4mv84cax.json"),
              
              Expanded(flex: 2,child: Container(),),
              RoundedElevatedButton(title: 'Release',
              // onPressed: ()=> _authController.signOut(),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Done()),
      );
              },
              padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2),),
              SizedBox(height: 80,)
            ]),
    );
      

    
  }
}