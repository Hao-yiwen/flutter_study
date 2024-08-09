import 'package:flutter/material.dart';

// https://github.com/flutter/samples/blob/main/provider_shopper/lib/screens/catalog.dart
class CatalogModel {
  static List<String> itemNames = [
    'Code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];

  Item getById(int id) {
    return Item(id: id, name: itemNames[id % itemNames.length]);
  }

  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item({
    required this.id,
    required this.name,
  }) : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
