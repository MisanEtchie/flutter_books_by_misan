import 'package:flutter/material.dart';

import '../widgets/zoom_menu.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        leading: ZoomMenu(),
        title: Text(
          "Help",
        ),
      ),
    );
  }
}
