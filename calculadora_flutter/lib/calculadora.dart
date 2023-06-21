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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height /3,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child:  Text(
                  usarInput,
                  style: const TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child:  Text(
                  result,
                  style: const TextStyle(
                    fontSize: 47,
                    color: Colors.white,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ]),
          ),
          const Divider(color: Colors.white),
          Expanded(child: Container(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: buttonList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (BuildContext context, int index){
                  return CustomButton(buttonList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget CustomButton(String Text){
    return InkWell(
      splashColor: Colors.deepPurple,
      onTap: (){},
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 0.5,
              offset: Offset(-3, -3),
            ),
          ],
        ),
      ),
    );
  }
}