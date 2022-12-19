import 'package:dispensa/screens/fake/add_medicine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../patient_registration.dart';

class BlankPrescription extends StatefulWidget {
  const BlankPrescription({required this.documentId});

  final String documentId;

  @override
  State<BlankPrescription> createState() => _BlankPrescriptionState();
}

class _BlankPrescriptionState extends State<BlankPrescription> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Prescription'),
        centerTitle: true,
      
      ),
      body:SafeArea(
        
        child: Center(  
                child: Column(children: <Widget>[  
                  
                 
                  Container(  
                    margin: EdgeInsets.all(10),  
                    child: Table(  
                      defaultColumnWidth: FixedColumnWidth(110.0),  
                      border: TableBorder.all(  
                          color: Colors.black,  
                          style: BorderStyle.solid,  
                          width: 2),  
                      children: [  
                        
                        TableRow( children: [  
                          Column(children:[Text('Description', style: TextStyle(fontSize: 20.0))]),  
                          Column(children:[Text('Meal', style: TextStyle(fontSize: 20.0))]),  
                          Column(children:[Text('Amount', style: TextStyle(fontSize: 20.0))]),  
                        ]),  
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]),  
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]),  
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), 
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), 
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), 
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), 
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), 
                        TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]), TableRow( children: [  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                          Column(children:[Text('')]),  
                        ]),  
                      ],  
                    ),  
                  ),  
                ]) ),
                
      ) ,
       floatingActionButton:FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddMedicine()),
            );
          },
              tooltip: 'Increment',
          child: Icon(Icons.add),));
  }
}