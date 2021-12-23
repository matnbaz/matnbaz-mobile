import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("متن‌باز"),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/repository'),
                child: const Text("Repository Page")),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/owner'),
                child: const Text("Owner Page")),
          ])),
    );
  }
}
