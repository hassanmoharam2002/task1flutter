


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class CustemedDrawer extends StatefulWidget {

  const CustemedDrawer({super.key});

  @override
  State<CustemedDrawer> createState() => _CustemedDrawerState();
}

class _CustemedDrawerState extends State<CustemedDrawer> {


  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 110,
      shadowColor: Colors.purple,
      surfaceTintColor: Colors.black,
      child: Column(
        children: [
          Stack(
            children: [
              
              Image.asset('assets/background.jpeg',
                fit: BoxFit.cover,
                height: 270,
                width: double.infinity,
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue[700]!,
                          width: 3,
                        ),
                        shape: BoxShape.circle,

                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/hassan.jpg'
                          ),
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'hassan',
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(.4),
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              )


            ],
          ),
          InkWell(
            highlightColor: Colors.black,
            onTap: (){

            },
            child: ListTile(
              leading: Icon(
                Icons.person, size: 30,
              ),
              title: Text('manage your acount',style: TextStyle(
                  fontSize: 20
              ),),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,
                right: 10),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_home_work_rounded, size: 30,
            ),
            title: Text('List your idea',style: TextStyle(
                fontSize: 20
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,
                right: 10),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings, size: 30,
            ),
            title: Text('Settings',style: TextStyle(
                fontSize: 20
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,
                right: 10),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person, size: 30,
            ),
            title: Text('ContactCustmerServes',style: TextStyle(
                fontSize: 15
            ),),
            onTap: (){

            },
          ),

          Spacer(),
          InkWell(
            highlightColor: Colors.black,
            onTap: ()async{

            },
            child: Expanded(
              child:Align(
                alignment:FractionalOffset.bottomLeft ,
                child: ListTile(
                  leading: Icon(
                    Icons.logout, size: 30,
                  ),
                  title: Text('Laogout',style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue
                  ),),
                ),
              ), ),
          )
        ],
      ),
    );
  }
}
