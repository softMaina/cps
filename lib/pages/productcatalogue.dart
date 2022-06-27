import 'package:flutter/material.dart';

class ProductCatalogue extends StatelessWidget {
  const ProductCatalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Column(
        children: [
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
          ),
          Card(
            elevation: 4,
            color: Colors.blue,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children:  [
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    color: Colors.grey,
                    child:const Image(
                        height: 150,
                        image: AssetImage(
                            'assets/images/headphones/beat_by_dre.png')),
                  ),
                 const Text('Noise Cancelling Headphones'),
                 const Text('249.95',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
