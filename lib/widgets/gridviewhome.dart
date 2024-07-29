


import 'package:flutter/material.dart';

class GridViewHome extends StatefulWidget {
   GridViewHome({super.key, required this.index});
  final int index;
  @override
  State<GridViewHome> createState() => _GridViewHomeState();
}

class _GridViewHomeState extends State<GridViewHome> {
  @override
  Widget build(BuildContext context) {
    List nameofcard =["day1","work","gym","sport","weekend","univercity","playstaion","tv","gg","cs"];

    return Card(
      color: Colors.black,

      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20)
        ),

        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // Image.asset('assets/images/folder.png',
            //   height: 100,),
            Center(child: Text(nameofcard[widget.index]))
          ],
        ),
      ),
    );
  }
}
