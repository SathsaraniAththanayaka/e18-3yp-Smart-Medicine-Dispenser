import 'package:dispensa/screens/medicine_history.dart';
import 'package:dispensa/screens/patient_profile.dart';
import 'package:dispensa/screens/prescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'fake/blank_prescription.dart';

class SelectOption extends StatefulWidget {
   const SelectOption({required this.documentId});

  final String documentId;

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Profile'),
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
            
            Text('Patient details'),
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
                                    (builder: (context) => PatientProfile(
                                        documentId: widget.documentId 
                                    )));
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                iconSize: 60.0,
              ),
            ),
            SizedBox(height: 20,),
             Text('Prescription'),
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
                                    (builder: (context) => BlankPrescription(
                                        documentId: widget.documentId 
                                    )));
                },
                icon: Icon(
                  Icons.file_open,
                  color: Colors.white,
                ),
                iconSize: 60.0,
                
              ),
            ),

             SizedBox(height: 20,),
             Text('Medicine history'),
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
                                    (builder: (context) => MedicineHistory(
                                        documentId: widget.documentId 
                                    )));
                },
                icon: Icon(
                  Icons.history,
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