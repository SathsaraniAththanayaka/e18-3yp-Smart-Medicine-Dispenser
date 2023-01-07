import 'package:dispensa/screens/show_day_prescription.dart';
import 'package:dispensa/screens/show_morning_prescription.dart';
import 'package:dispensa/screens/show_night_prescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class ShowPrescription extends StatefulWidget {
  const ShowPrescription({required this.documentId});

  final String documentId;

  @override
  State<ShowPrescription> createState() => _ShowPrescriptionState();
}

class _ShowPrescriptionState extends State<ShowPrescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prescription'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30,),
              TextButton(style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.purpleAccent,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => ShowMorningPrescription(
                                        documentId: widget.documentId 
                                    )));
                    },
                    child: const Text('Morning'), ),

              SizedBox(height: 15,),
              TextButton(style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.greenAccent,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                       Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => ShowDayPrescription(
                                        documentId: widget.documentId 
                                    )));
                    },
                    child: const Text('Day'), ),

              SizedBox(height: 15,),
              TextButton(style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.pinkAccent,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                       Navigator.push(context, new MaterialPageRoute
                                    (builder: (context) => ShowNightPrescription(
                                        documentId: widget.documentId 
                                    )));
                    },
                    child: const Text('Night'), ),
              SizedBox(height: 40,),
              Lottie.network("https://assets3.lottiefiles.com/packages/lf20_tutvdkg0.json",)
            ],
          ),
        ),
      ),
      
    );
  }
}