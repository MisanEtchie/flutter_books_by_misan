import 'package:flutter/material.dart';

import '../widgets/zoom_menu.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: ZoomMenu(),
          backgroundColor: Colors.blue,
          title: Text("Books"),
          elevation: 0,
        ),
        body: Container());
  }
}
