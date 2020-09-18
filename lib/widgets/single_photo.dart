import 'package:flutter/material.dart';

import 'package:gallery_flutter/models/data_from_api.dart';

class SinglePhoto extends StatefulWidget {
  const SinglePhoto({Key key}) : super(key: key);

  @override
  _SinglePhotoState createState() => _SinglePhotoState();
}

class _SinglePhotoState extends State<SinglePhoto> {

  // @override
  // void initState() {
  //   super.initState();
  //   getPhotos();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: NetworkImage(data[index]['urls']['small']),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}