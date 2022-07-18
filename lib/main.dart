import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'ITEC Support',
    theme: ThemeData(primarySwatch: Colors.cyan, backgroundColor: Colors.white),
    initialRoute: '/',
    routes: {
      '/': (context) => const MainPage(),
    },
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome!')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.search),
          label: const Text("ค้นหา")),
    );
  }
}
