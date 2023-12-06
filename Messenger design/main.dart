import 'package:flutter/material.dart';
import 'package:flutter_workspace/Login.dart';

void main() {
  runApp(MessengerApp());
}

class MessengerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      home: Login(),
    );
  }
}

