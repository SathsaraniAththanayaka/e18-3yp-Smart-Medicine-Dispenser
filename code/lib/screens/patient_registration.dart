import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'home/doctor_home_page.dart';


class PatientRegistration extends StatefulWidget {
  const PatientRegistration({Key? key, }) : super(key: key);
  
  @override
  State<PatientRegistration> createState() => _PatientRegistrationState();
}

class _PatientRegistrationState extends State<PatientRegistration> {
  
  
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _birthController = TextEditingController();
  final _dateofadmittanceController = TextEditingController();
  final _genderController = TextEditingController();
  final _diagnosisController = TextEditingController();
  final _guardianconnoController = TextEditingController();
  final _statusController = TextEditingController();
  final _checkedbyController = TextEditingController();
  final _bednoController = TextEditingController();

  @override
  void dispose(){
    _firstnameController.dispose();
    _lastnameController.dispose();
    _birthController.dispose();
    _dateofadmittanceController.dispose();
    _genderController.dispose();
    _diagnosisController.dispose();
    _guardianconnoController.dispose();
    _statusController.dispose();
    _checkedbyController.dispose();
    _bednoController.dispose();
    super.dispose();

  }
  
  @override
  void initState(){
    _birthController.text = '';
    _dateofadmittanceController.text = '';
    super.initState();
   
  }
 
  
  
  
  
  


  Future addUserDetails(String firstname,String lastname,String birthDate,String dateofadmittance,
  String gender,String diagnosis,String checkedby,String guardianconno,String status,String bedno) async {


    await FirebaseFirestore.instance.collection('Patients').add({
      'FirstName':firstname,
      'LastName': lastname,
      'BirthDate':birthDate,
      'DateOfAdmittance':dateofadmittance,
      'Gender':gender,
      'Diagnosis':diagnosis,
      'CheckedBy':checkedby,
      'GuardianConNo':guardianconno,
      'Status':status,
      'BedNo':bedno,
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      //backgroundColor: ThemeInfo.primaryColor,
      appBar: AppBar(
          backgroundColor:Colors.lightBlue[400] ,
          title: const Text("User Details"),
        ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              // Text(
              //   'User Details',
              //   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                height:150,
                child: Image(image: AssetImage("assets/profile.png"),
                fit: BoxFit.contain,
                ),
              ),
        
        
              Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                
                child: TextField(
                  controller: _firstnameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'First Name',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 15),

               Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                
                child: TextField(
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Last Name',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 15),
        
        
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _birthController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Date of birth',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_month)
                    
                  ),
                  
                  onTap: () async {
                    var date =  await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(1950), 
                      lastDate: DateTime(2101));
                    _birthController.text = date.toString().substring(0,10);

                    
                  },
                ),),
         
                
                SizedBox(height: 15),

                 Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _dateofadmittanceController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Date of Admittance',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_month)
                    
                  ),
                  
                  onTap: () async {
                    var date =  await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(1950), 
                      lastDate: DateTime(2101));
                    _dateofadmittanceController.text = date.toString().substring(0,10);

                    
                  },
                ),),
         
                
                SizedBox(height: 15),

        
        
        
        
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _genderController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Gender',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.boy),
                    
                  ),
                ),
                
              ),
             
                
                SizedBox(height: 15),
        
        
        
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _diagnosisController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Diagnosis',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.height),
                  ),
                ),
                ),
                SizedBox(height: 15),
        
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _checkedbyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Checked By(Ex:-Dr.Saman Kumara)',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.monitor_weight_rounded),
                  ),
                ),
                ),
                SizedBox(height: 25),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _guardianconnoController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Guardian Contact No',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.monitor_weight_rounded),
                  ),
                ),
                ),
                SizedBox(height: 25),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _statusController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Status',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.monitor_weight_rounded),
                  ),
                ),
                ),
                SizedBox(height: 25),

                 Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                
                child: TextField(
                  controller: _bednoController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Bed No',
                    fillColor: Colors.lightBlue[100],
                    filled: true,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 15),
        


        


        
        
              ElevatedButton(
                onPressed: () { 
                  addUserDetails(
                               _firstnameController.text.trim(),
                               _lastnameController.text.trim(),
                               _birthController.text.trim(),
                               _dateofadmittanceController.text.trim(),
                               _genderController.text.trim(),
                               _diagnosisController.text.trim(),
                               _checkedbyController.text.trim(),
                               _guardianconnoController.text.trim(),
                               _statusController.text.trim(),
                               _bednoController.text.trim(),
                               
                  );
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DocHome()),);
                },
                child: Text(
                  "   Admit   ",
                    style: TextStyle(fontSize: 20 ),
                ),
                style: ElevatedButton.styleFrom(
                  
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 10),
          )
        )
        
            ],
        
          ),
        ))
      );
    
  }
}