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
        // leading: IconButton(onPressed: (){

        // },
        // icon: IconButton(icon: const Icon(Icons.menu),
        // onPressed:(() {
          
        // }) ,),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(decoration: BoxDecoration(
            //   color: Colors.lightBlue,
            // ),
            // child: Text('Username'),),
            UserAccountsDrawerHeader(
              accountName: Text("Sathsarani Aththanayaka"),
              accountEmail: Text("sathsarani15920@gmail.com"),
              currentAccountPicture: Image.asset('assets/drawer.png'),
            ),
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Account'),
              leading: Icon(Icons.switch_account),
              onTap: (){

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: (){

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help & Feedback'),
              leading: Icon(Icons.help),
              onTap: (){

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: (){

                Navigator.pop(context);
              },
            ),

          ],
        ),
      ) ,
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