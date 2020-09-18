import 'package:flutter/material.dart';

import '../components/body.dart';
import '../components/my_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      // Just decoration
      bottomNavigationBar: MyBottomBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('My Gallery from unsplash API'),
    );
  }
}



