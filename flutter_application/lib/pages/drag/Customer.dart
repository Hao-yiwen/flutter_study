import 'package:flutter/material.dart';
import 'package:flutter_application/pages/drag/Item.dart';

class Customer {
  final String name;
  final ImageProvider imageProvider;
  final List<Item> items;

  Customer(
      {required String name,
      required ImageProvider imageProvider,
      List<Item>? items})
      : items = items ?? <Item>[],
        name = name,
        imageProvider = imageProvider;

  String get formattedTotalItemPrice {
    final totalPriceCents =
        items.fold(0, (prev, item) => prev + item.totalPriceCents);
    return '\$${(totalPriceCents / 100).toStringAsFixed(2)}';
  }

// Customer(
//   this.name,
//   this.imageProvider, {
//   List<Item>? items,
// }) : items = items ?? <Item>[];
}
