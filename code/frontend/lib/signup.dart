import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend/signin.dart';
import 'package:frontend/user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'dashboard.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  Future save() async{
    var res = await http.post("http://192.168.43.30:8080/Signup",headers: <String,String>{
      'Context-Type': 'application/json;charSet=UTF-8'
    },
    body: <String,String>{
      'email':user.email,
      'password':user.password,
    });
    print(res.body);
    Navigator.push(context, new MaterialPageRoute(builder: ((context) => Signin())));
  }
  User user = User('','');
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      body:Stack(
        children: [
          Positioned(child: SvgPicture.asset(
            'images/top.svg',
            width: 400,
            height: 127,
            )),
            Container(
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Text("Signup",
                    style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.bold, fontSize: 50,
                      color: Colors.blue
                    ),),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: TextEditingController(text: user.email),
                        onChanged: (value){
                          user.email = value;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter something';
                          }else if(RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)){
                            return null;
                          }else{
                            return 'Enter valid email';
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.blue)
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.blue)
                          ),

                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.red)
                          ),

                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.red)
                          )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: TextEditingController(text: user.email),
                        onChanged: (value){
                          user.email = value;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter something';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.blue)
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.blue)
                          ),

                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.red)
                          ),

                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.red)
                          )
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(40.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      child: TextButton(
                        
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            save();
                          }else{
                            print("not ok");
                          }
                        }, 
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        
                        
                        child: Text("Signup",style: TextStyle(color: Colors.white),)),
                      )
                    ),

                    Padding(
                      padding:  EdgeInsets.fromLTRB(65,20,0,0),
                      child: Row(children:  [
                        Text("Already have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                          ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, new MaterialPageRoute(builder: ((context) => Signin())));
                          },
                          child: Text(" Signin",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                            ),
                        )
                      ],),
                    )
                  ],
                ),
              ),
            )
        ]
      )
    );
  }
}