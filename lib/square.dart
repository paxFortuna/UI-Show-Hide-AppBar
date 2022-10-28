import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;

  const Square({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 1),
            color: Color.fromARGB(47, 0, 0, 0),
          ),
        ],
        color: Color.fromARGB(255, 234, 233, 233),
      ),
      child: Center(
        child: Text(
          child,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
