import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestourWidget extends StatelessWidget {
  GestourWidget({this.child1, required this.screan});
  Widget screan;
  Widget? child1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return screan;
            },
          ),
        );
      },
      child: child1,
    );
  }
}
