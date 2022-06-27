import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  final List<String> settings = [
    'Notifications',
    'Chat',
    'Privacy',
    'Language'
  ];
  final List<String> help = ['Ask A Question', 'FAQ'];

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
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0, 25.0, 0, 35.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 31.0,
                    backgroundColor: Colors.blueAccent,
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.red,
                        backgroundImage:
                            AssetImage('assets/images/stewie.jpg')),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Stewie Griffin',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '@Stewie_Griffin',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Description or status',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 19,
                          fontStyle: FontStyle.italic),
                    ),
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
            child: const Text(
              'Settings',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueAccent),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: settings.length,
              itemBuilder: (context, position) {
                return Card(
                    child: Material(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(Icons.abc_outlined),
                          title: Text(settings[position]),
                          onTap: () {},
                        )));
              }),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
            child: const Text(
              'Help',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueAccent),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: help.length,
              itemBuilder: (context, position) {
                return Card(
                    child: Material(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(Icons.abc_outlined),
                          title: Text(help[position]),
                          onTap: () {},
                        )));
              }),
        ],
      )),
    );
  }
}
