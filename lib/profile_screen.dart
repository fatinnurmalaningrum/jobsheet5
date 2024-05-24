import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('John Doe', style: TextStyle(fontSize: 24)),
          Text('Software Developer', style: TextStyle(fontSize: 18)),
          Text('john.doe@example.com', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
