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
                              title: Text(snapshot.data!.docs[index]['Metphomine'] ,style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                                )),
                                    subtitle: Text(snapshot.data!.docs[index]['Paracetamol'],
                                    style: TextStyle(
                                     color: Colors.green
                )),         
                                    trailing: Icon(Icons.keyboard_arrow_right),
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
        }
        
     
  ),
),
      
    );
  }
}