import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';


import '../../config.dart';
import '../../controllers/authController.dart';
import '../../widgets/rounded_elevated_button.dart';
import '../../widgets/text_with_textbutton.dart';
import '../roots.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({
    Key? key,

    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
       _nameController = nameController,
       _emailController = emailController,
       _passwordController = passwordController,
       super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Expanded(flex: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: Config.screenHeight! * 0.02),
            RoundedElevatedButton(onPressed: (){
              
              if(_formKey.currentState!.validate()){
                  String name = _nameController.text.trim();
                  String email = _emailController.text.trim();
                  String password = _passwordController.text.trim();

                  
                  _authController.signUp(name, email, password);

                  Map<String,dynamic> data = {"Username":name,"email":email};
                  FirebaseFirestore.instance.collection("Users").add(data);
              }
            },
            title: 'Sign up',
            padding: EdgeInsets.symmetric(
              horizontal: Config.screenWidth! * 0.38,
              vertical: Config.screenHeight! * 0.02,
            ),
            ),
            TextWithTextButton(
              text: 'Already have an account?', 
              textButtonText: 'Sign in',
              onPressed: () => Get.offAll(
                () => Root(),
            ))
          ],
        ),);
  }
}