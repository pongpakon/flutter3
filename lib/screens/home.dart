import 'package:flutter/material.dart';

class Home extends StatefulWidget {  
  const Home({super.key});

  @override{
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Simple App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  print("Text Button Pressed");
                }, 
                child: Text(
                  "Text",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fonSize:20,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      );
    }
  }
}