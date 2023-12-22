import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wazamse/common/Screen/Onbording/onbording.dart'; // Assurez-vous d'importer Get

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnbordingScreen(),
    );
  }
}

