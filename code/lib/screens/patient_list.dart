import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dispensa/screens/patient_profile.dart';
import 'package:dispensa/screens/select_patient_option.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientList extends StatefulWidget {
  

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  final db = FirebaseFirestore.instance;

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: db.collection('Patients').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var docor = snapshot.data!.docs;
              
          
              return new ListView.builder(
                  itemCount: docor.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot user = snapshot.data!.docs[index];
                    String documentId = user.id;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            
                            
                            ListTile(
                              leading: CircleAvatar(radius: 25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThofG1Z2Mivccct2YR6aqe-XNszwBT09DYnw&usqp=CAU'),),
                              title: Text('Mr.'+snapshot.data!.docs[index]['FirstName']+' '+snapshot.data!.docs[index]['LastName'] ,style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                                )),
                                    subtitle: Text(snapshot.data!.docs[index]['Status'],
                                    style: TextStyle(
                                     color: Colors.green
                )),         
                                    trailing: Icon(Icons.delete),
                                    selected: true,
                                    
                                onTap: (){
                                  Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => SelectOption(
                                        documentId: documentId 
                                    )));
                                },
                            ),
                            
                            
                            
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return LinearProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}