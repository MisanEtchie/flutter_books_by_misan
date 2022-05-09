import 'package:books_by_misan_app/main.dart';
import 'package:flutter/material.dart';

import '../screens/bookpage.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
