import 'dart:html';

import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Home',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      )),
    );
  }
}
