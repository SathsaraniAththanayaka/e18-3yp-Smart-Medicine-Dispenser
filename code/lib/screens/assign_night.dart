import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dispensa/screens/show_morning_prescription.dart';
import 'package:dispensa/screens/show_night_prescription.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:firebase_auth/firebase_auth.dart';





class AssignNight extends StatefulWidget {
   const AssignNight({required this.documentId});

  
  final String documentId;
  
  @override
  State<AssignNight> createState() => _AssignNightState();
}

class _AssignNightState extends State<AssignNight> {

  final _drugController = TextEditingController();
  final _doseController = TextEditingController();

  @override
  void dispose() {
    _drugController.dispose();
    _doseController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  Future addUserDetails(String drug,String dose) async {
    await FirebaseFirestore.instance.collection('Patients').doc(widget.documentId).collection('Night').doc(drug).set({
      'Dose':dose,
    });
  }

  
   
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
          backgroundColor:Colors.lightBlue[400] ,
          title: const Text("Assign Medicine"),
        ),
        body: SingleChildScrollView(
          child: Center(
          child: Form(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 SizedBox(height: 25),
        
                   Padding(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  
                  child: TextField(
                    controller: _drugController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      hintText: 'Description',
                      fillColor: Colors.grey[200],
                      filled: true,
                      // prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                
        
                SizedBox(height: 20,),
        
                   Padding(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  
                  child: TextField(
                    controller: _doseController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      hintText: 'Dose',
                      fillColor: Colors.grey[200],
                      filled: true,
                      // prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    child: Text('Save'),
                    onPressed: (){
                      addUserDetails(
                               _drugController.text.trim(),
                               _doseController.text.trim(),);
                      Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => ShowNightPrescription(
                                      documentId: widget.documentId 
                                    )));
                    },
                  ),
                ),
                
              ],
            ),
          ),
              ),
        ),
    );
  }
}
