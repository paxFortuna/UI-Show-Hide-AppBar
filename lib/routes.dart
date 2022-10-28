import 'package:flutter/material.dart';
import 'package:ui_hide_show_abbbar/modal/modal.dart';
import 'package:ui_hide_show_abbbar/nav_bar.dart';
import 'package:ui_hide_show_abbbar/neumorphism/neumorphism.dart';
import 'package:ui_hide_show_abbbar/slide_to_act/slide_to_act.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => NavBar()),
            );
          }, child: Text('NavBar to NestedScrollView')),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => SlideToAct()),
            );
          }, child: Text('Slide To Act')),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => StepByStep()),
            );
          }, child: Text('Modal Sheet')),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => Neumorphism()),
            );
          }, child: Text('Neu Morphism')),
          ElevatedButton(onPressed: (){}, child: Text('')),
        ],
      ),
    );
  }
}
