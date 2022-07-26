import 'package:flutter/material.dart';
import 'dart:convert';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<dynamic> searchResults = []; //create variable as a list.

  searchPostsDjango(value) async {
    SearchService.searchPostDjangoAPI(value).then((responseBody) {
      List<dynamic> data = jsonDecode(responseBody);
      setState(() {
        data.forEach((value) {
          searchResults.add(value);
        });
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text("ITEC  Support"),
        conterTitle: true,
      ),
      body: ListView(
        children: Widget [
          Padding: const EdgeInsets.all(10.0),
          child: TextField(
            onChanged = (val) {
              searchResults.clear();
              searchResultsDHLOpen(val)

//TODO : Finish this piece of code
//too tired and sleepy :/
//https://medium.com/flutter-community/django-search-flutter-1cb3e8a5db1a
            
            }
          )
        ],))
    )
  }
}
