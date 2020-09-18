import 'package:flutter/material.dart';

import '../widgets/photos_list.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Photos(),
    );
  }
}