import 'package:flutter/material.dart';

class Menu {
  final String name;
  final Icon icon;

  Menu({this.name, this.icon});
  static final List<Menu> menu = [
    new Menu(name: "home", icon: Icon(Icons.home, color: Colors.white)),
    new Menu(name: "category", icon: Icon(Icons.category, color: Colors.white)),
    new Menu(
        name: "basket", icon: Icon(Icons.shopping_basket, color: Colors.white)),
    new Menu(
        name: "about", icon: Icon(Icons.account_circle, color: Colors.white)),
    new Menu(name: "settings", icon: Icon(Icons.settings, color: Colors.white)),
    new Menu(name: "close", icon: Icon(Icons.close, color: Colors.white)),
  ];
}
