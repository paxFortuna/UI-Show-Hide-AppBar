import 'package:flutter/material.dart';

class Neumorphism extends StatefulWidget {
  const Neumorphism({Key? key}) : super(key: key);

  @override
  State<Neumorphism> createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Neumorphism'),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: _boxDecoration(),
              child: Icon(
                Icons.play_arrow,
                size: 50,
                color: Colors.red.shade700,
              ),
            ),
            Container(
              decoration: _boxDecoration(),
              child: Icon(
                Icons.home_work,
                size: 50,
                color: Colors.grey.shade700,
              ),
            ),
            Container(
              decoration: _boxDecoration(),
              child: Icon(
                Icons.social_distance,
                size: 50,
                color: Colors.grey.shade700,
              ),
            ),
            Container(
              decoration: _boxDecoration(),
              child: Icon(
                Icons.mail_lock,
                size: 50,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          spreadRadius: 3,
          color: Colors.grey.shade700,
          blurRadius: 10,
          offset: const Offset(5, 5),
        ),
        const BoxShadow(
          spreadRadius: 3,
          color: Colors.white,
          blurRadius: 14,
          offset: Offset(-5, -5),
        ),
      ],
    );
  }
}
