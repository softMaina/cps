import 'package:cps/components/CatalogueCard.dart';
import 'package:cps/components/SearchBar.dart';
import 'package:flutter/material.dart';

class ProductCatalogue extends StatelessWidget {
  const ProductCatalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          const CatalogueCard(),
        ],
      ),
    );
  }
}
