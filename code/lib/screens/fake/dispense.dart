import 'package:dispensa/screens/fake/finish.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dispense extends StatefulWidget {
  const Dispense({super.key});

  @override
  State<Dispense> createState() => _DispenseState();
}

class _DispenseState extends State<Dispense> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Choose the meal'),
        centerTitle: true,
      
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),
               Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            // Text('Patient details'),
            SizedBox(height: 10,),
            Ink(
              width: 100,
              height: 100,
              decoration: const ShapeDecoration(
                color: Colors.pink,
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => Finished(
                                       
                                    )));
                },
                icon: Icon(
                  Icons.sunny_snowing,
                  color: Colors.white,
                ),
                iconSize: 60.0,
              ),
            ),
            SizedBox(height: 20,),
            //  Text('Prescription'),
            SizedBox(height: 10,),
            Ink(
              width: 100,
              height: 100,
              decoration: const ShapeDecoration(
                color: Colors.purple,
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => Finished(
                                        
                                    )));
                },
                icon: Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
                iconSize: 60.0,
                
              ),
            ),

             SizedBox(height: 20,),
            //  Text('Medicine history'),
            SizedBox(height: 10,),
            Ink(
              width: 100,
              height: 100,
              decoration: const ShapeDecoration(
                color: Colors.lightGreen,
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => Finished(
                                       
                                    )));
                },
                icon: Icon(
                  Icons.nightlight,
                  color: Colors.white,
                ),
                iconSize: 60.0,
                
              ),
            ),
          ],
        ),
      ),
     
        
              ]
            
            
          ),
        ),
      )
      );
  }
}