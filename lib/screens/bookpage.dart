import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/booker.dart';
import '../models/bookshelf.dart';
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
      body: Column(
        children: [
          Expanded(
            child: MasonryGridView.count(
              itemCount: bookshelf.length,
              itemBuilder: (context, index) {
                return Booker(books: bookshelf[index]);
              },
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
