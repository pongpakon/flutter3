
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Hello World'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage('https://scontent-bkk1-2.xx.fbcdn.net/v/t1.6435-1/123268525_665092337493496_1009115341906858508_n.jpg?stp=dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHkEi0Me2iRqPZZP1eIhIEoPPOD6d1yBQI884Pp3XIFAljLEcJ0CYAm0jQTe-8j_WNaGxvMrPRpuEOF-vYsQqKw&_nc_ohc=e2kBPjq2v7EQ7kNvgFP6CZ9&_nc_ht=scontent-bkk1-2.xx&oh=00_AYDzqw8pYJIGg8ekYPHIfTmseOBU6H2nn8eF9WhSfkFKCg&oe=66D41C07'),
                width: 50,
                height: 50,
              ),
              Text('Resume',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ) ,
              )
            ]
          ),
          Row(
            children:[
              Column(
                children: [
                  Text('First Name: Phongphakon'),
                  Text('Last Name: Junkhammm'),
                ]
            ),
            ]
          ),
          
          Row(children: [
            Text('Hobby: Play game')
          ]),
          Row(children: [
            Text('Education:')
          ]),
          Row(children: [
            Column(
              children: [
                Text('Primary: Phichai School'),
                Text('Secondary: Phichai School'),
                Text('UnderGrad: Naresuan University'),
              ],
            ),
            Column(
              children: [
                Text('GPA: X.XX'),
                Text('GPA: Y.YY'),
                Text('GPA: Z.ZZ')
              ]
            ),
          ]
          ),
          Row(
            children:[
              Column(
                children: [
                  Text('ระบบที่เคยพัฒนา: แอปเครื่องคิดเลข'),
                ]
            ),
            ]
          ),
        ]
      ),
    );
  }
}

 