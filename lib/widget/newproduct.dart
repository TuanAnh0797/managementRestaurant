import 'package:flutter/material.dart';
class newproduct extends StatefulWidget {
  const newproduct({super.key});

  @override
  State<newproduct> createState() => _newproductState();
}

class _newproductState extends State<newproduct> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body:  Column(
        children: [
          Padding(padding: EdgeInsets.only(top:30)),
           Container(
               color: Colors.green,
               child: Text('Thêm sản phẩm',style: TextStyle(fontSize: 30))
           ),
          TextField()
        ],
      ),
    ));
  }
}
