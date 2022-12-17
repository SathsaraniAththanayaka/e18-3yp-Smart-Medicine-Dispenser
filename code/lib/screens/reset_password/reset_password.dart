import 'package:dispensa/widgets/hero_title.dart';
import 'package:dispensa/widgets/rounded_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../config.dart';
import '../../widgets/hero_image.dart';
import 'localWidgets/reset_form.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Get.back(), 
                  icon: Icon(Icons.close)
                ),
              ),
              HeroTitle(
                title: '     Reset Password', 
                subtitle: 'Please enter your account email'),
              HeroImage(
                path: 'assets/resetPassword.png',
                semanticsLabel: 'Reset Hero',),
              ResetForm(),
              SizedBox(height: Config.screenHeight! * 0.3,)
            ]
          ),
        ),)
    );
  }
}

