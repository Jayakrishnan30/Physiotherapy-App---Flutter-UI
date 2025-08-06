import 'package:assess_it/pages/cardio.dart';
import 'package:assess_it/pages/neuro.dart';
import 'package:assess_it/pages/ortho.dart';
import 'package:assess_it/pages/paediatric.dart';
import 'package:assess_it/pages/quick_access.dart';
import 'package:assess_it/pages/re_assessment.dart';
import 'package:assess_it/pages/sports_.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assess It!', 
           style: TextStyle(
            color: Colors.white,
            ),
            ),
        backgroundColor: Colors.blue,

      ),
      body: ListView(
        children : [
          Options(optionList: 'Quick Access'),
          Options(optionList: 'Re-Assessment'),
          Options(optionList: 'Orthopaedic Assessment'),
          Options(optionList: 'Sports Injury Assessment'),
          Options(optionList: 'Neurological Assessment'),
          Options(optionList: 'Paediatric Assessment'),
          Options(optionList: 'Cardio Assessment'),

        ],
      ),


    );
  }
}


class Options extends StatelessWidget {
  const Options({super.key, required this.optionList,});

final String optionList;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.circular(10.0)
              ),
          
              child: ListTile (
                
                title: SizedBox(
                  height: 100.0,
                  
                  child: Center(
                      child: Text(
                        optionList,

                      
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        
                      ),
                      ),
                      
                  ),
                ),
                onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                        
                        if(optionList == 'Quick Access'){
                          
                            return QuickAccess();

                        }
                        else if(optionList == 'Re-Assessment'){

                          return ReAssessment();
                        }
                         
                         else if(optionList == 'Orthopaedic Assessment'){

                          return Ortho();
                        }

                        else if(optionList == 'Sports Injury Assessment'){

                          return Sports();
                        }

                        else if(optionList == 'Neurological Assessment'){

                          return Neuro();
                        }
                        
                        else if(optionList == 'Paediatric Assessment'){

                          return Paediatric();
                        }

                        else{
  
                          return Cardio();
                        }

                       },
                       ),
                       );
                      },
              ),
            ),

          );
  }
}