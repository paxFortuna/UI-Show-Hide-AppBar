import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToAct extends StatefulWidget {
  const SlideToAct({Key? key}) : super(key: key);

  @override
  State<SlideToAct> createState() => _SlideToActState();
}

class _SlideToActState extends State<SlideToAct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideAction(
        // Here you can add your function
        onSubmit: () {},
         innerColor: Colors.white,
        outerColor: Colors.black,
        elevation: 3,
        borderRadius: 25,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
