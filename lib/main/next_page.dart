import 'package:assess_it/main/common_widget.dart';
import 'package:flutter/material.dart';


class NextPage extends StatefulWidget {
  const NextPage({super.key, required this.appbarName});

  final String appbarName;

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  final TextStyle commonTextstyle = TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  );

  final TextStyle nexttextStyles = TextStyle(
                  fontSize: 27.0,
  );   

double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( widget.appbarName,
         style: TextStyle(
          color: Colors.white,
         ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PAIN ASSESSMENT',
              style: commonTextstyle),

              Text('1. Onset of Pain',
              style: nexttextStyles,),

              TextField(
               decoration: InputDecoration(
                border: OutlineInputBorder(),
               ),
              ),
              
              Text('2. Intensity of pain',
              style: nexttextStyles,),

              SizedBox(
               height: 5.0,
              ),

              Text('Pain Level (VAS)', 
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 21.0,
              ),
              ),


              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1', style: TextStyle( fontSize: 18),),

                
                Expanded(
                child: Slider(
                
                activeColor: Colors.blue,
                min: 0,
                max: 10,
                value: sliderValue,
                divisions: 9,
                label: sliderValue.toStringAsFixed(0),
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
              
                },
                ),
                ),

                
                
                Text('10', style: TextStyle( fontSize: 18),),
               
              ],
                ),

              Text('Selected value: ${sliderValue.toStringAsFixed(0)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
              ),
              ),

              Text('3. Type of Pain',
              style: nexttextStyles,),

              TextField(
               decoration: InputDecoration(
                border: OutlineInputBorder(),
               ),
              ),

              Text('4. Select Aggravating and Relieving Factors',
              style: nexttextStyles,),

              SizedBox( height: 8,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Expanded(

                    flex: 4,
                    child: SizedBox(),
                    ),

                  Expanded(
                    flex: 3,
                    child: Text('Aggravating', style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    
                  ),
                   
                  
                  ),
                    ),
                  
                  
                  Expanded(
                    flex: 2,
                    child: Text('Relieving', style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),),
                  
                ],

              ),

               CommonCheckbox(checkboxText: 'Liquor'),
               CommonCheckbox(checkboxText: 'Stimulants (eg: Caffeine)'),
               CommonCheckbox(checkboxText: 'Eating'),
               CommonCheckbox(checkboxText: 'Heat'),
               CommonCheckbox(checkboxText: 'Cold'),
               CommonCheckbox(checkboxText: 'Weather Changes'),
               CommonCheckbox(checkboxText: 'Massage'),
               CommonCheckbox(checkboxText: 'Pressure'),
               CommonCheckbox(checkboxText: 'No Movement'),
               CommonCheckbox(checkboxText: 'Movement'),
               CommonCheckbox(checkboxText: 'Sitting'),
               CommonCheckbox(checkboxText: 'Sleep/Rest'),
               CommonCheckbox(checkboxText: 'Lying Down'),
               CommonCheckbox(checkboxText: 'Distraction (eg: TV)'),
               CommonCheckbox(checkboxText: 'Urination/Defecation'),
               CommonCheckbox(checkboxText: 'Loud Noise'),
               CommonCheckbox(checkboxText: 'Tension/Stress'),
               CommonCheckbox(checkboxText: 'Going To Work'),
               CommonCheckbox(checkboxText: 'Intercourse'),
               CommonCheckbox(checkboxText: 'Mild Exercise'),
               CommonCheckbox(checkboxText: 'Fatigue'),
               CommonCheckbox(checkboxText: 'Standing'),

              
              
            ],
          ),
        ),
      ),
    );
  }
}