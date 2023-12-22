import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Courses/widget/SectionComplet.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
            SectionComplet(),
            ],
          ),
        ),
      ),
    );
  }
}