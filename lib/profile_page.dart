import 'package:flutter/material.dart';


class MyDropdownTextField extends StatefulWidget {
  const MyDropdownTextField({super.key});

  
  @override
  _MyDropdownTextFieldState createState() => _MyDropdownTextFieldState();
}

class _MyDropdownTextFieldState extends State<MyDropdownTextField> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  String _selectedValue = 'Option 1';

  @override
  void initState() {
    super.initState();
    _controller.text = _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: _controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: 'Choose an option',
          border: OutlineInputBorder(),
          suffixIcon: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(Icons.arrow_drop_down),
              value: _selectedValue,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedValue = newValue;
                    _controller.text = newValue;
                  });
                }
              },
              items: _options.map((String item){
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}



class CheckAsRadio extends StatefulWidget {
  const CheckAsRadio({super.key});

  @override
  _CheckAsRadioState createState() => _CheckAsRadioState();
}

class _CheckAsRadioState extends State<CheckAsRadio> {
  String? _selectedOption;

  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckboxListTile as Radio')),
      body: ListView(
        children: _options.map((option) {
          return CheckboxListTile(
            title: Text(option),
            value: _selectedOption == option,
            onChanged: (bool? selected) {
              setState(() {
                if (selected == true) {
                  _selectedOption = option;
                } else {
                  _selectedOption = null; // deselect if same is tapped
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}