import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: ConstraintsWidget(),
    ));
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              color: Colors.blue,
              child: const Text(
                "Hello World! Hello World! Hello World!Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!",
                style: TextStyle(fontSize: 30),
              )),
        ),
        Flexible(
          child: Container(
              color: Colors.red,
              child: const Text(
                "Hello World!",
                style: TextStyle(fontSize: 30),
              )),
        ),
      ],
    );

    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: OverflowBox(
          child: Container(
            width: 300,
            height: 700,
            color: Colors.green,
          ),
        ),
      ),
    );

    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: UnconstrainedBox(
          child: Container(
            width: 300,
            height: 700,
            color: Colors.green,
          ),
        ),
      ),
    );

    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          constraints: BoxConstraints.loose(const Size(200, 200)),
          color: Colors.red,
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ),
      ),
    );

    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          // constraints: BoxConstraints.tight(Size(200, 200)),
          constraints: BoxConstraints.loose(const Size(200, 200)),
          height: 50,
          width: 50,
          color: Colors.red,
        ),
      ),
    );

    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
              minHeight: 200, minWidth: 200, maxHeight: 250, maxWidth: 250),
          height: 300,
          width: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
