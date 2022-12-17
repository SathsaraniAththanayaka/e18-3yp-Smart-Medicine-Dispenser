import 'package:dispensa/config.dart';
import 'package:dispensa/screens/sign_in/localWidget/sign_in_buttons.dart';
import 'package:flutter/material.dart';
import '../../../widgets/rounded_text_formfield.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              buildTextFormField(),
              SignInButtons(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
              )
          ]
        ),
      )
    );
  }

  Widget buildTextFormField() {
    return Column(
              children: [
                RoundedTextFormField(
              controller: _emailController,
              hintText: 'Email',
              validator: (value) {
                bool _isEmailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value!);
                if (!_isEmailValid){
                  return 'Invalid email.';
                }
                return null;
     
              },
            ),
            SizedBox(height: Config.screenHeight! * 0.01),
            RoundedTextFormField(
              controller: _passwordController,
              hintText: 'Password',
              obsecureText: true,
              validator: (value) {
                if(value.toString().length < 6){
                  return 'Password should be longer or equal to 6 characters.';
                }
              return null;
              },
            ),
              ],
            );
  }
}







