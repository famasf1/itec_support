import 'package:flutter/material.dart';
//flutter pub add http
import 'package:http/http.dart' as http;

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

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Future<http.Response> buttonPressed () async {
    http.Response returnedResult = await http.get(
      Uri.parse('http://localhost:8000/app/helloworld'),
      headers: <String, String>{
        'Content-Type' : 'application/json; charset-UTF-8'
      });
    print(returnedResult.body);
    return returnedResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome!')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: buttonPressed,
          icon: const Icon(Icons.search),
          label: const Text("ค้นหา")),
    );
  }
}
    