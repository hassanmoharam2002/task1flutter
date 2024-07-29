

import 'package:flutter/material.dart';
import 'package:task1flutter/home.dart';


import 'component/customButton.dart';


import 'component/customlogoauth.dart';
import 'component/textformfield.dart';

class LogIn extends StatefulWidget {

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool ispasswordshow =true;

  bool isloadong=false;

  @override
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: formstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height:  50,),
                  const Center(
                      child:  CustomLogoAuth()
                  ),
                  Container(
                    height: 20,
                  ),
                  const Text('Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('login to continue using the app',style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ),),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  CustomTextform(
                    bordr: BorderRadius.circular(10),
                    prefix: Icons.email,
                    hintext: 'Enter your email',
                    mycontroller: email, validator: (val) {
                    if(val== ""){
                      return 'cant to be empty';
                    }
                    return null;
                  }, statepassword: false, suffixpressed: () {  },

                    coloreo: Colors.grey,
                    coloro: Colors.grey,
                  ),
                  Container(height: 30,),
                  const Text('password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  CustomTextform(
                    bordr: BorderRadius.circular(10),


                    sufix: ispasswordshow ?Icons.visibility:Icons.visibility_off,
                    suffixpressed: (){
                      setState(() {
                        ispasswordshow=  !ispasswordshow;
                      });

                    },
                    prefix: Icons.password,
                    statepassword: ispasswordshow ? true: false,
                    mycontroller: password,
                    hintext: 'Enter your password',
                    validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                      return null;
                    },
                    coloreo: Colors.grey,
                    coloro: Colors.grey,

                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10,bottom: 20
                    ),
                    alignment: Alignment.topRight,
                    child: const Text('forget password !',

                      style: TextStyle(fontSize: 14),

                    ),
                  ),


                ],
              ),
            ),




            CustomButton(title: 'login',
              onpressed: (){


                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
              },

            ),


            Container(height: 20,),


            Container(height: 20,),
            // Text('dont  have acount ? register', textAlign: TextAlign.center,),
            InkWell(
              onTap:(){
                Navigator.of(context).pushReplacementNamed('signup');

              } ,
              child: Container(
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text:"dont  have acount ?"
                    ),
                    TextSpan(
                        text:" register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212121)
                        )
                    ),
                  ])),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
