import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'data.dart';

class EmojiGrid extends StatefulWidget {
  const EmojiGrid({super.key});

  @override
  State<EmojiGrid> createState() => _EmojiGridState();
}

class _EmojiGridState extends State<EmojiGrid> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: emojis.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: EmojiTile(
            emoji: emojis[index],
          ),
        );
      },
    );
  }
}

class EmojiTile extends StatefulWidget {
  final String emoji;

  const EmojiTile({required this.emoji, super.key});

  @override
  State<EmojiTile> createState() => _EmojiTileState();
}

class _EmojiTileState extends State<EmojiTile> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 5),
            child: Center(
              child: Text(
                widget.emoji,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          IconButton(
            color: Colors.redAccent,
            icon: Icon(
              FontAwesomeIcons.copy,
              color: isHovered ? Colors.white : IconTheme.of(context).color,
              size: 15,
            ),
            onPressed: () async {
              FlutterClipboard.copy(widget.emoji).then(
                (value) {
                  return ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Text Copied'),
                    ),
                  );
                },
              );
            },
          ),
        ]),
      ),
    );
  }
}

InputDecoration textFieldDecoration(BuildContext context, String hintText) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(5),
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
