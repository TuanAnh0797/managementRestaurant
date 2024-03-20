import 'package:flutter/material.dart';
import 'package:managerrestaurant/widget/newproduct.dart';
import 'package:managerrestaurant/widget/products.dart';
import 'package:managerrestaurant/Model/product.dart';

import 'main.dart';
class management extends StatefulWidget {
  const management({super.key});

  @override
  State<management> createState() => _managementState();
}

class _managementState extends State<management> {
  final List<product> _listproduct =[
    product(title: 'Bánh mì thịt',amount: 15000,cate: Category.Bread,date: DateTime.now()),
    product(title: 'Bánh mì xúc xích',amount: 12000,cate: Category.Bread,date: DateTime.now()),
    product(title: 'Xôi thịt',amount: 20000,cate: Category.StickyRice,date: DateTime.now()),
    product(title: 'Sữa Fami',amount: 6000,cate: Category.Drink,date: DateTime.now()),
    product(title: 'Cocacola',amount: 6000,cate: Category.Drink,date: DateTime.now()),
    product(title: 'Bánh mì trứng',amount: 12000,cate: Category.Bread,date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
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
        backgroundColor: Colors.blueAccent[400],
        title: const Text('Quản lý sản phẩm',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context, listroute[0]);
          }, icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: products(listproduct: _listproduct),
      )
    )
    );
  }
}
