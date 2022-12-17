import 'package:dispensa/screens/sign_in/localWidget/sign_in_form.dart';
import 'package:dispensa/widgets/hero_image.dart';
import 'package:flutter/material.dart';

import '../../../config.dart';
import '../../../widgets/hero_title.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      body: SafeArea(
       
          
          child: Column(
                
                children: [
                  
                  HeroTitle(
                    title: 'Sign In',
                    subtitle: 'Enter email and password to login...' ,),
                  HeroImage(
                    path: 'assets/welcome.png',
                    semanticsLabel: 'Login Hero',),
                  SignInForm()
                ],
              
          ),
        ),
      );
    
  }
}



