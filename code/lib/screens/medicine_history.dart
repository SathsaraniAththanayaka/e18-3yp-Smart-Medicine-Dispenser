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
        title: Text('Medicine History'),
        centerTitle: true,
      
      ),
     body: Center(
      child: Timeline(),
     ),
      );
    
     }
  

      
}

class Timeline extends StatefulWidget {
  const Timeline({
    Key? key,
  }) : super(key: key);

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, index){
          return Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black,

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(Icons.done,color:Colors.white,),
                    )
                  ],
                ),
                Expanded(child:Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 10,
                      color: Colors.black26
                    )]
                  ),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Date: 2022-12-19 ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text("Meal: Morning",style: TextStyle(fontSize: 16)),
                        Text("Prescription",style: TextStyle(fontSize: 16)),
                        Text("    Paracetamol: 2",style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                ))
              ],
            )
          );
        })),
    );
  }
}