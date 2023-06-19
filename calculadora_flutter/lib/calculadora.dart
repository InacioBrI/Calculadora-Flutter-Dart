import 'package:flutter/material.dart';


class CalculadoraApp extends StatefulWidget {
  const CalculadoraApp({Key? key}) : super(key: key);

  @override
  State<CalculadoraApp> createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  String usarInput = "";
  String result = "0";

  List<String> buttonList =[
    'AC',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'C',
    '0',
    '.',
    '=',
  ];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(

      ),
    );
  }
}
