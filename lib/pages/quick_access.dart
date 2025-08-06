import 'package:flutter/material.dart';
import '../main/common_widget.dart';
import '../main/next_page.dart';

class QuickAccess extends StatefulWidget {
  const QuickAccess({super.key});



  @override
  State<QuickAccess> createState() => _QuickAccessState();
}

class _QuickAccessState extends State<QuickAccess> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Access',
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
          return NextPage(appbarName: 'Quick Access');
        },),);
      },
    ),
      ],
     )
    );
  }
}


