import 'package:flutter/material.dart';

import 'chatscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat App"),),
      body: ChatScreen(),
    );
  }
}
