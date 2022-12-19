import 'package:dispensa/screens/home/doctor_home_page.dart';
import 'package:dispensa/screens/home/home.dart';
import 'package:dispensa/screens/sign_up/sign_up_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../config.dart';
import '../widgets/hero_image.dart';
import '../widgets/hero_title.dart';
import '../widgets/rounded_elevated_button.dart';
import '../widgets/rounded_text_formfield.dart';

class NurseCredentials extends StatefulWidget {
  const NurseCredentials({super.key});

  @override
  State<NurseCredentials> createState() => _NurseCredentialsState();
}

class _NurseCredentialsState extends State<NurseCredentials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Credentials'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      resizeToAvoidBottomInset: false ,
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
          child: Form(
           
            child: Column(
              children: [
               
                // HeroTitle(title: 'Enter credentials', subtitle: 'As a doctor...'),
               
                Lottie.network("https://assets9.lottiefiles.com/packages/lf20_hhTerB.json"),
                // HeroImage(
                //     path: 'assets/doctor.png',
                //     semanticsLabel: 'Login Hero',),
                buildTextFormFields(),

                Text("By continuing, you agree to our Terms of Service and privacy policy",
                style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent)),
                SizedBox(height: 20,),
                RoundedElevatedButton(title: 'Authorize',
                  onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DocHome()),
  );
            },
            padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2,vertical: Config.screenHeight! * 0.0001),),
            SizedBox(height: 70,),

            
              ],
            )),
        ),
      )
    );
  }

  Expanded buildTextFormFields() {
    return Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: SizedBox(height: Config.screenHeight! * 0.04),
                  ),
                    RoundedTextFormField(
                      // controller: _nameController,
                      hintText: 'SLMC Registered Name',
                      validator: (value){
                        if(value.toString().length <= 2){
                          return 'Enter a valid name.';
                        }
                        return null;
                      } ,
                      ),
                     
                      SizedBox(height: Config.screenHeight! * 0.02,),
                    RoundedTextFormField(
                      obsecureText: true,
                      // controller: _passwordController,
                      hintText: 'SLMC Registered ID',
                       validator: (value) {
                        if(value.toString().length < 6){
                          return 'Password should be longer or equal to 6 characters.';
                        }
                        return null;
                      },
                    ),
                      
                  ],
                ),
              );
      
      
      
    
  }
}