import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget을 겹겹이 쌓아 배치하기"),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(140)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Count 0",
            style: TextStyle(color: Colors.red, fontSize: 32),
          ),
        )
      ],
    );

    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 50,
          right: 30,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
