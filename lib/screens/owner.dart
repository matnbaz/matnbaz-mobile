import 'package:flutter/material.dart';

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحه سازنده"),
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
