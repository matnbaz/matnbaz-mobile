import 'package:flutter/material.dart';

class RepositoryScreen extends StatelessWidget {
  const RepositoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحه مخزن"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "WIP",
        ),
      ),
    );
  }
}
