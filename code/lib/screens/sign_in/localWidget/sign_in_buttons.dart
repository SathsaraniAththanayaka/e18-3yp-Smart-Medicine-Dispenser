import 'package:dispensa/screens/sign_up/localWidget/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config.dart';
import '../../../controllers/authController.dart';
import '../../../widgets/rounded_elevated_button.dart';
import '../../../widgets/text_with_textbutton.dart';
import '../../reset_password/reset_password.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    Key? key, 
    required GlobalKey<FormState> formKey, 
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController, 
  super(key: key);

  final GlobalKey<FormState>? _formKey;
  final TextEditingController? _emailController;
  final TextEditingController? _passwordController;
  @override
  Widget build(BuildContext context) {
     final _authController = Get.find<AuthController>();
    return Expanded(
        
          child: Column(
            
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () => Get.to(() => ResetPassword()),
                   child: Text('Forgot Password'),
                   style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent,)
                   )
                  ),
                ),
              ),
              RoundedElevatedButton(title: 'Sign in',
              onPressed: (){
                if(_formKey!.currentState!.validate()){
                  String email = _emailController!.text.trim();
                  String password = _passwordController!.text;
                  _authController.signIn(email, password);
                }
              },
              padding: EdgeInsets.symmetric(
                horizontal: Config.screenWidth! * 0.3,
                vertical: Config.screenHeight! * 0.0001,
              )
              ),
              TextWithTextButton(
                text: 'Don\'t have an account?',
                onPressed: () => Get.to(() => SignUp()),
                textButtonText: 'Sign up',)
          
            ]
            ),
        
        );
      
   
  }
}