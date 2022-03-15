import 'package:flutter/material.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({Key? key}) : super(key: key);

  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manusia') ,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Column(
            children: [
              Image.network('https://i.scdn.co/image/ab67616d00001e02b55d26c578e30129b0a7e86e', width: 200),
              Text('Manusia'),
              Text('Tulus'),
              Text('Mar 3, 22'),
            ],
          ),
        ),
      ),
    );
  }
}
