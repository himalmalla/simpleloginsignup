import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 98, 233, 202),
        title: Text("Favourite"),
      ),
    );
  }
}
