import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dispensa/screens/fake/add_one_medicine.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../home/doctor_home_page.dart';




class AddMedicine extends StatefulWidget {
  const AddMedicine({Key? key, }) : super(key: key);
  
  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
 late String _myActivity;
  late String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
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
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 SizedBox(height: 25),
        
                   Padding(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  
                  child: TextField(
                   
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
                Container(
                  padding: EdgeInsets.all(16),
                  child: DropDownFormField(
                    titleText: 'Meal',
                    hintText: 'Choose the meal',
                    value: _myActivity,
                    onSaved: (value) {
                      setState(() {
                        _myActivity = value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        _myActivity = value;
                      });
                    },
                    dataSource: [
                      {
                        "display": "Morning",
                        "value": "Morning",
                      },
                      {
                        "display": "Day",
                        "value": "Day",
                      },
                      {
                        "display": "Night",
                        "value": "Night",
                      },
                      
                    ],
                    textField: 'display',
                    valueField: 'value',
                  ),
                ),
        
                
        
                   Padding(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  
                  child: TextField(
                   
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
                      Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => AddOneMedicine(

                                    )));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(_myActivityResult),
                )
              ],
            ),
          ),
              ),
        ),
    );
  }
}
