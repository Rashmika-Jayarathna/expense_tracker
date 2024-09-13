import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.titile,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String titile;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedADate {
    return formatter.format(date);
  }
}
