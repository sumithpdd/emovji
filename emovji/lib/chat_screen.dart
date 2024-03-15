import 'package:flutter/material.dart';

import 'chat_widget.dart';
import 'emoji_grid.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});
  final String title;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/movie.jpeg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Text(
              "Hint - List of Emoji's",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 80,
              child: EmojiGrid(),
            ),
            const ChatWidget(),
          ],
        ),
      ),
    );
  }
}
