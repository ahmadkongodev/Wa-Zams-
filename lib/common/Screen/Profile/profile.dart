import 'package:flutter/material.dart';
//import 'package:share_plus/share_plus.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Show additional options
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.blue, // Couleur de fond du cercle
            child: Icon(
              Icons.person,
              size: 80,
              color: Colors.white, // Couleur de l'icône
            ),
          ),
          const SizedBox(height: 16),
            const Text(
              'WA ZAMSE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Burkina@wazamse',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 24),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('burkinawazamse@.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('(+225) 05-00-00-00'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Burkina Faso.\nOuagadougou BP0000, BF'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate to notification & security settings
              },
              child: const Text('Notification & Security' , style: TextStyle(color: Colors.blue)),
            ),
            ElevatedButton(
              onPressed: () {
                //Share.share('https://wazamse.com');
              },
              child: const Text('Invite Friends', style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}