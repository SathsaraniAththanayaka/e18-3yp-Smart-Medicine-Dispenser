import 'package:dispensa/screens/roots.dart';
import 'package:dispensa/widgets/hero_title.dart';
import 'package:dispensa/widgets/rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../config.dart';
import '../../controllers/authController.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Center(
      child: GetBuilder<AuthController>(
        builder: (_authController) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            HeroTitle(title: 'Hello ${_authController.displayName.toString().capitalizeString()}', 
            subtitle: 'Let\'s begin....'),
            Expanded(flex: 8,child: Container(),),
            RoundedElevatedButton(title: 'Sign out!',
            onPressed: ()=> _authController.signOut(),
            padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2),)
          ]);
        }
      ),
    );
  }
}