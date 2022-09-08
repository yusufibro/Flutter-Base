import 'package:flutter/material.dart';

class MenuModel {
  String? image, text;

  MenuModel({
    this.image,
    this.text,
  });
}

List<MenuModel> menus = [
  MenuModel(
    image: 'res/images/cocoa.png',
    text: 'Cocoa',
  ),
  MenuModel(
    image: 'res/images/ice-cream.png',
    text: 'Ice Cream',
  ),
  MenuModel(
    image: 'res/images/drink.png',
    text: 'Drink',
  ),
  MenuModel(
    image: 'res/images/cheese.png',
    text: 'Cheese',
  ),
  MenuModel(
    image: 'res/images/burger.png',
    text: 'Burger',
  ),
  MenuModel(
    image: 'res/images/mie.png',
    text: 'Mie',
  ),
  MenuModel(
    image: 'res/images/pancake.png',
    text: 'Pancake',
  ),
  MenuModel(
    image: 'res/images/pizza.png',
    text: 'Pizza',
  ),
];
