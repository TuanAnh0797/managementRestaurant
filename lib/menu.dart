import 'package:flutter/material.dart';
class menuform extends StatefulWidget {
  const menuform({super.key});

  @override
  State<menuform> createState() => _menuformState();
}

class _menuformState extends State<menuform> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(children: [
        Text('data')
      ]),
    ));
  }
}
