import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepByStep extends StatefulWidget {
  const StepByStep({Key? key}) : super(key: key);

  @override
  State<StepByStep> createState() => _StepByStepState();
}

class _StepByStepState extends State<StepByStep> {
  // int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Modal Bottom Sheet',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                context: context,
                builder: (context) {
                  return Container(
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                });
          },
          child: const Text('Show modal'),
        ),
      ),
    );
  }
}
