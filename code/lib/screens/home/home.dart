import 'package:dispensa/screens/roots.dart';
import 'package:dispensa/screens/user_type.dart';
import 'package:dispensa/widgets/hero_title.dart';
import 'package:dispensa/widgets/rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../controllers/authController.dart';
import '../../widgets/hero_image.dart';

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
            subtitle: 'Let\'s go to the hospital....'),
            // HeroImage(
            //         path: 'assets/welcome.png',
            //         semanticsLabel: 'Login Hero',),
            Lottie.network("https://assets5.lottiefiles.com/packages/lf20_pkbvwwvg/bienvenida.sifz.4ECFE884.json"),
            Text('Medicine is not only a science; it is also an art.It does not consist of compounding pills and plasters; it deals with the very processes of life, which must be understood before they may be guided.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                )),
            Expanded(flex: 2,child: Container(),),
            RoundedElevatedButton(title: 'Get started',
            // onPressed: ()=> _authController.signOut(),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserType()),
  );
            },
            padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2),)
          ]);
        }
      ),
    );
  }
}