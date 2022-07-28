import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

//  Future<http.Response> buttonPressed() async {
//    http.Response returnedResult = await http.get(
//        Uri.parse('http://localhost:8000/app/posts'),
//        headers: <String, String>{
//          'Content-Type': 'application/json; charset-UTF-8'
//        });
//    print(returnedResult.body);
//    return returnedResult;
//  }

//////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome!')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          icon: const Icon(Icons.search),
          label: const Text("ค้นหา")),
    );
  }
}
