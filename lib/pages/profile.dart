import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

  final List<String> settings = ['Notifications','Chat','Privacy','Language'];
  final List<String> help = ['Ask A Question','FAQ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 45.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/stewie.jpg')),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Name',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Description or status',
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 19),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Update Profile'),
            ),
          ),
          Container(child: Text('Settings')),

          Container(
            child: Text('Help'),
          )
        ],
      )),
    );
  }
}
