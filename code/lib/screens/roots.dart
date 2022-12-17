import 'package:dispensa/screens/sign_in/localWidget/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../config.dart';
import '../controllers/authController.dart';
import 'home/home.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: GetBuilder<AuthController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.04),
                child: _.userProfile!=null ? Home() : SignIn()),
          );
        },
      ),
    );
  }
      
}
  

// extension StringExtention on String{
//     String capitalizeString(){
//       return '${this[0].toUpperCase()}${this.substring(1)}';
//     }
//   }