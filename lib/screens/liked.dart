import 'package:flutter/material.dart';

import '../widgets/zoom_menu.dart';

class Liked extends StatelessWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: ZoomMenu(),
        title: Text("Liked"),
      ),
    );
  }
}
