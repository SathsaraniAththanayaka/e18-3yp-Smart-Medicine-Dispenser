import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MedicineHistory extends StatefulWidget {
  const MedicineHistory({required this.documentId});

  final String documentId;

  @override
  State<MedicineHistory> createState() => _MedicineHistoryState();
}

class _MedicineHistoryState extends State<MedicineHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ward'),
        centerTitle: true,
      
      ),
      body: SingleChildScrollView(child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Patients')
              .doc(widget.documentId) //ID OF DOCUMENT
              .snapshots(),
        builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return new CircularProgressIndicator();
        }
        var document = snapshot.data;
        return new Text(document!["FirstName"]);
     }
  ),
),
      
    );
  }
}