import 'package:flutter/material.dart';
import '../profile_page.dart';

class Fields extends StatelessWidget {
  const Fields({
    super.key,required this.hints,
  });

  final String hints;
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.all(8.0),
       
       child: TextField(
        decoration : InputDecoration(
        border: OutlineInputBorder(),
        hintText: hints,
        ),
        ),                
       );
       
  }
}

class Headings extends StatelessWidget {
  const Headings({
    super.key, required this.commonName
  });

final String commonName;
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text(
     commonName,
     style: TextStyle(
       fontSize: 25.0,
     ),
     ),
     
    );
  }
}


class Details extends StatefulWidget {
  const Details({super.key});



  @override
  State<Details> createState() => DetailsState();
}

class DetailsState extends State<Details> {

  final TextStyle commonTextstyle = TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  );
 
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
         
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [

                  Text('SUBJECTIVE ASSESSMENT',
                  style: commonTextstyle,),
                  
                  SizedBox(height: 5.0),
                              
                  Text('Demographic Data',
                  style: commonTextstyle,),
            
               
                  Headings(commonName: 'Name'),
                  Fields(hints: '',),
                  
                  Headings(commonName: 'Age'),
                  Fields(hints: '',),
                  
                  Headings(commonName: 'Date'),
                  Fields(hints: 'Select Date',),
            
                  Headings(commonName: 'Sex'),
                  MyDropdownTextField(),

                  Headings(commonName: 'Occupation'),
                  Fields(hints: '',),

                  Headings(commonName: 'Address'),
                  Fields(hints: '',),
 
                  Text('Case History',
                  style: commonTextstyle,),

                  Headings(commonName: 'Chief Complaints'),
                  Fields(hints: '',),
                   
                  Headings(commonName: 'Past Medical History'),
                  Fields(hints: 'eg: Test and Treatment, Medicines, Surgeries...',),

                  Headings(commonName: 'Personal History'),
                  Fields(hints: 'eg: Usage of Tobacco, Alcohol, Recreational D..',),
       
                  Headings(commonName: 'Family History'),
                  Fields(hints: 'eg: Family Backgrounds, Hereiditary Complaints',),

                  Headings(commonName: 'Occupational History'),
                  Fields(hints: 'eg: Occupational Hazards, Relation to present..',),

                  Headings(commonName: 'Social History'),
                  Fields(hints: 'eg: How this problem affecting ability to perform',),
                  
              ]
           ),
         ),

     );

  }
}


class CommonCheckbox extends StatefulWidget {
  const CommonCheckbox({super.key, required this.checkboxText});
 
  final String checkboxText;

  @override
  State<CommonCheckbox> createState() => _CommonCheckboxState();
}

class _CommonCheckboxState extends State<CommonCheckbox> {

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
                
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Expanded(
                    flex: 9,
                    child: Text(widget.checkboxText, style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                  
                  Expanded(
                    flex: 7,
                    child: Checkbox(
                      activeColor: Colors.red,
                      value: selectedIndex == 0,
                      
                      onChanged: (bool? red) {
                        setState(() {

                          if(selectedIndex == 0){

                            selectedIndex = null;
                          }
                          else{
                            selectedIndex = 0;
                          }
                          
                          
                        });
                      },),
                  ),

                    
    
                    Expanded(
                      flex: 5,
                      child: Checkbox(
                      activeColor: Colors.green,
                      value: selectedIndex == 1,
                      
                      onChanged: (bool? green) {
                        setState(() {
                           if(selectedIndex == 1){

                            selectedIndex = null;
                          }
                          else{
                            selectedIndex = 1;
                          }
                          
                        });
                      },),
                    ),
                   
                ],
              );
  }
}