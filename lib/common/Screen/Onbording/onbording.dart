import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Onbording/widget/startButton.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:200.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/logo/logo.png'),
                  SizedBox(height: 20,),
                  Text('Apprendre Partout', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  SizedBox(height: 10),
                  Text('commencer à apprendre'),  
                  SizedBox(height: 50),          
                  startButton()
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

