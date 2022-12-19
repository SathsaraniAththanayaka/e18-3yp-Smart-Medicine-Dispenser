import 'package:dispensa/screens/patient_list.dart';
import 'package:dispensa/screens/patient_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class DocHome extends StatefulWidget {
  const DocHome({super.key});

  @override
  State<DocHome> createState() => _DocHomeState();
}

class _DocHomeState extends State<DocHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Ward'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.settings))
        ],
        leading: IconButton(onPressed: (){

        },
        icon: IconButton(icon: const Icon(Icons.menu),
        onPressed:(() {
          
        }) ,),),
      ),
      body: PatientList(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PatientRegistration()),
  );
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
    );
  }
}