import 'package:emovji/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GenerativeAISample());
}

class GenerativeAISample extends StatelessWidget {
  const GenerativeAISample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter + Generative AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(title: 'Flutter + Generative AI'),
    );
  }
}
