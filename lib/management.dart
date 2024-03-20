import 'package:flutter/material.dart';
import 'package:managerrestaurant/widget/newproduct.dart';

import 'main.dart';
class management extends StatefulWidget {
  const management({super.key});

  @override
  State<management> createState() => _managementState();
}

class _managementState extends State<management> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
        onPressed: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) => const newproduct()
              );
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Management',style: TextStyle(fontSize: 25)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context, listroute[0]);
          }, icon: const Icon(Icons.logout)),
        ],
      ),
      body: Column(children: [
        Text('data')
      ]),
    )
    );
  }
}
