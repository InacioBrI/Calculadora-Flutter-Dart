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

  Widget CustomButton(String text){
    return InkWell(
      splashColor: Colors.deepPurple,
      onTap: (){
        setState(() {
          handleButtons(text);
        });
      },
      child: Ink(
        decoration: BoxDecoration(
          color: getBgColor(text),
          borderRadius: const BorderRadius.horizontal(),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 0.5,
              offset: const Offset(-3, -3),
            ),
          ],
        ),
        child: Center(
          child: Text(
              text,
            style: TextStyle(
                color: getColor(text),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
  getColor(String text){
    if(text == "/" || text == "*" || text == "+" || text == "-" || text == "C" || text == "(" || text == ")"){
      return Color.fromARGB(255, 252, 100, 100);
    }
    return Colors.white;
  }

  getBgColor(String text){
    if(text == "AC"){
      return Color.fromARGB(255, 252, 100, 100);
    }
    if(text == "="){
      return Color.fromARGB(255, 9, 199, 231);
    }
    return Color(0xff132236);
  }
  handleButtons(String text){
    if(text == "AC"){
      usarInput = "";
      result = "0";
      return;
    }
    if(text == "C"){
      if(usarInput.isNotEmpty){
        usarInput = usarInput.substring(0, usarInput.length -1);
      }
    else{
      return null;
      }
    }
  }
}