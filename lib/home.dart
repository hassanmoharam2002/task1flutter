




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1flutter/widgets/gridviewhome.dart';

import 'drawer_ui/drawer_.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: CustemedDrawer(),

        floatingActionButton:FloatingActionButton(
          backgroundColor: Colors.green,
          shape: CircleBorder(),
          child: Text('D',
          style: TextStyle(
              color: Colors.white,
            fontSize: 21
          ),
          ),
          onPressed: (){

        //    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tadwina()));
          },
        ) ,
        appBar: AppBar(

          title:
          Text("hassan moharam",
          style: TextStyle(
            color: Colors.black
          ),
          ) ,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "tadwintak",
              ),
              Tab(
                text: "highlight",
              )
            ],
          ),


        ),
        body: TabBarView(
          children: [


            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 160
              ),
              itemBuilder: (BuildContext context, int index) {

                return  GridViewHome(index: index,);
              },
              itemCount: 10,
            ),




            Column(
                children: [Icon(Icons.favorite),] ),


          ],
        ),
      ),
    );
  }
}
