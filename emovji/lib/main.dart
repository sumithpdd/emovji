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
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text(
              'Guess the Emovie 👦🏻',
              style: TextStyle(color: Colors.white),
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
              ],
            ),
          ),
        ));
  }
}
