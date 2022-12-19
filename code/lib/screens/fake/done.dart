import 'package:dispensa/screens/home/doctor_home_page.dart';
import 'package:dispensa/screens/home/nurse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../widgets/rounded_elevated_button.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
              Lottie.network("https://assets9.lottiefiles.com/temporary_files/7bLmTw.json"),
              
              Expanded(flex: 2,child: Container(),),
              
            ]),
            floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DocHome()),
  );
          },
          tooltip: 'Increment',
          child: Icon(Icons.local_hospital),
        ),
     );
  }
}