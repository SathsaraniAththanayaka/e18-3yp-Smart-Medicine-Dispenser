import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dispensa/screens/select_patient_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Prescription extends StatefulWidget {
   const Prescription({required this.documentId});

  final String documentId;

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Precription'),
        centerTitle: true,
      
      ),
      body: SingleChildScrollView(child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Patients')
              .doc(widget.documentId)
              .collection('Prescription') //ID OF DOCUMENT
              .snapshots(),
        builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return new CircularProgressIndicator();
        }
        
          var docor = snapshot.data!.docs;
              
          
              return Expanded(
                child: ListView.builder(
                    itemCount: docor.length,
                    itemBuilder: (context, index) {
                      return Text(snapshot.data!.docs[index]['Paracetamol']);
                    }),
              );
        }
        
     
  ),
),
      
    );
  }
}