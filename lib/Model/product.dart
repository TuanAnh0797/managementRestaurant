import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatdate = DateFormat.yMd();
const uuid = Uuid();
enum Category {StickyRice, Bread, Drink}
const IconCategory = {
  Category.Bread : '',
  Category.StickyRice : '',
  Category.Drink: ''
};

class product{
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category cate;

  product({required this.title, required this.amount, required this.date, required this.cate}):id=uuid.v4();

  String get formattedDate{
    return formatdate.format(date);
  }
}