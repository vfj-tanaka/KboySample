import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('セカンド'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
          style: TextStyle(
            fontSize: 50,
          ),
          ),
          TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('前の画面へ'),
        ),
    ]
      ),
      ),
    );
  }
}