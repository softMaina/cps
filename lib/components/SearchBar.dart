import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      //search bar
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: 'Search Our Products',
              border: OutlineInputBorder(),
              labelText: 'Search',
              icon: Icon(Icons.search_outlined)),
        ),
      );
  }
}