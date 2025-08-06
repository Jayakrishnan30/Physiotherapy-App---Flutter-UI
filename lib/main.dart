import 'package:assess_it/main/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          ),
      ),
      home: HomePage(),
    ),
  );
}

