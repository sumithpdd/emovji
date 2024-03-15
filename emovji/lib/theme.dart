import 'package:flutter/material.dart';

InputDecoration textFieldDecoration(BuildContext context, String hintText) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      hintText: hintText,
      fillColor: Colors.white,
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
