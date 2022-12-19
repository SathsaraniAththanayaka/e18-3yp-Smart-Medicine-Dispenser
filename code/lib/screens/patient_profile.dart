import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dispensa/screens/patient_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientProfile extends StatefulWidget {
   const PatientProfile({required this.documentId});

  final String documentId;
  
  
  @override
  State<PatientProfile> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient details'),
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
        SizedBox(height: 20,);
        
        
        
        return  Center(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text('Name:- '+document!["FirstName"]+" "+document["LastName"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.right,),

              Text('Date of Birth:- '+document["BirthDate"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),

              Text('Gender:- '+document["Gender"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),

              Text('Date of admittance:- '+document["DateOfAdmittance"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),
              
              Text('Diagnosis:- '+document["Diagnosis"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),
              
              Text('Checked By:- '+document["CheckedBy"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),
              
              Text('Bed No:- '+document["BedNo"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),
              Text('Guardian\'s contact No. :- '+document["GuardianConNo"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.start
              ),
              Text('Status:- '+document["Status"]+"\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
                ),
                textAlign: TextAlign.right
              ),
              
              
              
              
            ],
          ),
        );
        
         }
      ),
      
),
  floatingActionButton:FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PatientRegistration()),
            );
          },
              tooltip: 'Increment',
          child: Icon(Icons.edit),)

      
    );
    
  }
}