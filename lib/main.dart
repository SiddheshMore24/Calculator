import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var sum=0 , num1=0,num2=0;

 final TextEditingController t1=TextEditingController(text:"0");
 final TextEditingController t2=TextEditingController(text:"0");


  void doAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doDiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=((num1).toDouble()/(num2).toDouble()).toInt();
    });
  }
  void clear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Calculator"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "First Number",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: t1,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Second Number",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: t2,
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: doAdd,
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: doSub,
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: doMul,
                  child: const Text(
                    "*",
                    style: TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: doDiv,
                  child: const Text(
                    "/",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: clear,
              child:const Text(
                "Clear",
                style: TextStyle(fontSize: 20),
              )),
          const SizedBox(height: 60,),
         const  Text(
            "Output: ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("$sum ",
          style:const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          )
        ],
      ),
    );
  }
}
