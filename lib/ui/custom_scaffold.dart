import 'dart:ui';

import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  CustomScaffold({
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(28, 29, 31, 0.9),
              Color.fromRGBO(38, 40, 42, 0.7)
            ],
          ),
        ),
        child: body,
      )
    );
  }
}





