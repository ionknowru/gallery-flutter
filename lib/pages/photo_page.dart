import 'package:flutter/material.dart';

import 'package:gallery_flutter/components/app_bar.dart';
import 'package:gallery_flutter/components/my_bottom_bar.dart';

import 'package:gallery_flutter/widgets/single_photo.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SinglePhoto(),
      // Just decoration
      bottomNavigationBar: MyBottomBar(),
    );
  }
}