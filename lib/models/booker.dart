import 'package:flutter/material.dart';

import 'book.dart';

class Booker extends StatelessWidget {
  final Book books;
  const Booker({required this.books, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  child: Image(
                image: AssetImage(
                  books.image,
                ),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                books.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                books.publisher,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
