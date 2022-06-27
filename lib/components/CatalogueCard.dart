import 'package:flutter/material.dart';

class CatalogueCard extends StatelessWidget{
  const CatalogueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        elevation: 5,
        color: Colors.white,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Center(
                child: Card(
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
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(8.0,12.0, 0, 0),
                child:  Text('Noise Cancelling Headphones', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(8.0,12.0,0, 12.0),
                child:  Text('249.95',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              )
            ],
          ),
        ),
      ),
    );
  }

}