import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Courses/widget/SectionEncour.dart';

class Encour extends StatelessWidget {
  const Encour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SectionEncour(),

            ],
          ),
        ),
      ),
    );
  }
}