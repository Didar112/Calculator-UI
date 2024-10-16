import 'package:flutter/material.dart';

void main() => runApp(myCalc());

class myCalc extends StatefulWidget {
  const myCalc({super.key});

  @override
  State<myCalc> createState() => _myCalcState();
}

class _myCalcState extends State<myCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget calcButton(String buttonText, Color textColor, Color buttonColor) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: CircleBorder(),
          padding: EdgeInsets.all(10.0),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.black,
        title: Text('Calculator', style: TextStyle(fontSize: 25, color: Colors.white), ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('0', style: TextStyle(color: Colors.white,
                      fontSize: 80),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.white, Colors.grey.shade700),
                calcButton('+/-', Colors.white, Colors.grey.shade700),
                calcButton('%', Colors.white, Colors.grey.shade700),
                calcButton('/', Colors.white, Colors.amber.shade500),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.white, Colors.grey.shade900),
                calcButton('8', Colors.white, Colors.grey.shade900),
                calcButton('9', Colors.white, Colors.grey.shade900),
                calcButton('X', Colors.white, Colors.amber.shade500),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.white, Colors.grey.shade900),
                calcButton('5', Colors.white, Colors.grey.shade900),
                calcButton('6', Colors.white, Colors.grey.shade900),
                calcButton('-', Colors.white, Colors.amber.shade500),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('1', Colors.white, Colors.grey.shade900),
                calcButton('2', Colors.white, Colors.grey.shade900),
                calcButton('3', Colors.white, Colors.grey.shade900),
                calcButton('+', Colors.white, Colors.amber.shade500),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('00', Colors.white, Colors.grey.shade900),
                calcButton('0', Colors.white, Colors.grey.shade900),
                calcButton('.', Colors.white, Colors.grey.shade900),
                calcButton('=', Colors.white, Colors.amber.shade500),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

