import 'package:flutter/material.dart';
import 'package:flutter_space_projects/pages/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/sicials.png'),
            radius: 60,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Advanture'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('moonfarzana007@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text('Number'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode_rounded),
      ),
    );
  }
}
