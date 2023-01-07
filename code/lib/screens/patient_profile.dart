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
        
        
        
        return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            SizedBox(height: 25,),
            Container(
                height:120,
                child: Image(image: AssetImage("assets/patientProf.png"),
                fit: BoxFit.contain,
                ),
              ),

            SizedBox(height: 25,),
            const Divider(
            color: Colors.purple,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),
             Container(
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
               child: Text(' Personal details',
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
                  textAlign: TextAlign.start),
             ),

            const Divider(
            color: Colors.purple,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),

          SizedBox(height: 15,),
            Text('    Name: '+document!["FirstName"]+" "+document["LastName"]+"\n",
            style: TextStyle(
              fontSize: 18,
              
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start),


            
            
          
            Text('    Date of Birth: '+document["BirthDate"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),
           

          

          

            Text('    Gender: '+document["Gender"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),

            Text('    Guardian\'s contact No. : '+document["GuardianConNo"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),


            const Divider(
            color: Colors.lightGreen,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),

            Container(
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
               child: Text(' Admittance details',
                  style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
                  textAlign: TextAlign.start),
             ),

            const Divider(
            color: Colors.lightGreen,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),

          SizedBox(height: 15,),



            Text('    Date of admittance: '+document["DateOfAdmittance"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),
            
          

            Text('    Diagnosis: '+document["Diagnosis"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),
            
            

            Text('    Checked By: '+document["CheckedBy"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),
            
             const Divider(
            color: Colors.pink,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),

            Container(
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
               child: Text(' Current status',
                  style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
                  textAlign: TextAlign.start),
             ),

            const Divider(
            color: Colors.pink,
            
            thickness: 5,
            indent: 5,
            endIndent: 5,
          ),

          SizedBox(height: 15,),



            Text('    Bed No: '+document["BedNo"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),

            
          

            Text('    Status: '+document["Status"]+"\n",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.blueGrey
              ),
              textAlign: TextAlign.start
            ),
            
            
            
            
          ],
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