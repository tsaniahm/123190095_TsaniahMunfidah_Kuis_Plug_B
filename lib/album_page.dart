import 'package:flutter/material.dart';
import 'package:tsaniahmunfidah_kuis/song_lists_page.dart';
import 'package:tsaniahmunfidah_kuis/top_album_data.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spoti-Pay'),
        ),
      body:  GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index){
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SongsPage()));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('https://i.scdn.co/image/ab67616d00001e02b55d26c578e30129b0a7e86e'),
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,
      ),
    );
  }
}
