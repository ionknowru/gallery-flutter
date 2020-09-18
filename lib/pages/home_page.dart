import 'package:flutter/material.dart';

import 'package:gallery_flutter/components/app_bar.dart';
import '../components/my_bottom_bar.dart';

import 'package:gallery_flutter/widgets/photos_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Photos(),
      // Just decoration
      bottomNavigationBar: MyBottomBar(),
    );
  }
}



