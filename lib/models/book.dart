import 'package:flutter/material.dart';

class Book {
  String image;
  String name;
  String publisher;
  late bool like;

  Book({
    required this.name,
    required this.publisher,
    required this.image,
    required this.like,
  });
}
