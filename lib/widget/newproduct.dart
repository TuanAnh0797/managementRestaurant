import 'package:flutter/material.dart';
import 'package:managerrestaurant/Model/product.dart';
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
          Padding(padding: EdgeInsets.only(top:32)),
           Container(
                width: 2000,
               color: Colors.green[500],
               child:  const Center(
                   child: Text(
                       'Thêm sản phẩm',
                       style: TextStyle(fontSize: 30,)
                   )
               )
           ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Tên sản phẩm mới',contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 5)),
                  style: TextStyle( ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Giá',contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 5)),
                  style: TextStyle( ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                DropdownButton(

                    items: Category.values.map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                            e.name.toUpperCase())
                    )
                    )
                        .toList(),
                    onChanged: (value){


                }
                )

              ],
            ),
          )
        ],
      ),
    ));
  }
}
