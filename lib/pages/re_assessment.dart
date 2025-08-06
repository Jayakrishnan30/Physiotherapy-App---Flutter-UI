import 'package:flutter/material.dart';
import '../main/common_widget.dart';
import '../main/next_page.dart';

class ReAssessment extends StatefulWidget {
  const ReAssessment({super.key});

  @override
  State<ReAssessment> createState() => _ReAssessmentState();
}

class _ReAssessmentState extends State<ReAssessment> {

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Re-Assessment',
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
          return NextPage(appbarName: 'Re-Assessment');
        },),);
      },
    ),
      ],
     )
    );
  }
}