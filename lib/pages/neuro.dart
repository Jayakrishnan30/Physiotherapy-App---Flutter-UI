import 'package:assess_it/main/common_widget.dart';
import 'package:flutter/material.dart';

import '../main/next_page.dart';

class Neuro extends StatefulWidget {
  const Neuro({super.key});

  @override
  State<Neuro> createState() => _NeuroState();
}

class _NeuroState extends State<Neuro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neurological Assessment',
         style: TextStyle(
          color: Colors.white,
         ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),

      body: ListView(
      children: [

        Details(),
        ListTile(
      title: Text('NEXT', 
      textAlign: TextAlign.center,
      style: TextStyle(
        
        color: Colors.white,
        fontSize: 27.0,
        fontWeight: FontWeight.bold,
      ),
      ),
      tileColor: Colors.blue,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NextPage(appbarName: 'Neurological Assessment');
        },),);
      },
    ),
      ],
     )
    );
  }
}