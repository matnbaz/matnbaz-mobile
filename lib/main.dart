import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
      title: 'Matnbaz',
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      theme: ThemeData(
        fontFamily: "Vazir",
        primarySwatch: Colors.blue,
      ),
      locale: const Locale("fa", "IR"),
      home: const Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("متن‌باز"),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
        ],
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
