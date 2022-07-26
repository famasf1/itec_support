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
      home: Scaffold(
        appBar: AppBar(
          title: Text("ITEC  Support"),
          centerTitle: true,
        ),
        body: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (val) {
                  //clearing result store in cache
                  searchResults.clear();
                  //then calling django for search query
                  searchPostsDjango(val);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25.0),
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  suffixIcon:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: searchResults.length,
              itemBuilder: (BuildContext context, int index) {
                return buildResultCard(searchResults[index]);
              },
            ),
          ],
//TODO : Finish this piece of code
//too tired and sleepy :/
//https://medium.com/flutter-community/django-search-flutter-1cb3e8a5db1a
        ),
      ),
    );
  }
}
