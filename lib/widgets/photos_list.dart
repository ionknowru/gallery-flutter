import 'package:flutter/material.dart';

import '../models/data_from_api.dart';

class Photos extends StatefulWidget {
  const Photos({Key key}) : super(key: key);

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {

  @override
  void initState() {
    super.initState();
    getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(data[index]['urls']['small']),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${data[index]['user']['username']}',
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
    );
  }
}