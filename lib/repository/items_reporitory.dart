import 'package:buyzer/repository/model/buy_item.dart';
import 'package:flutter/material.dart';

class ItemsRepository {
  final List<BuyItem> items = List.empty(growable: true);

  void generateFakeData() {
    items.add(BuyItem("Мороженое 🍦", Colors.green));
    items.add(BuyItem("Ушные палочки", Colors.green));
  }

  ItemsRepository() {
    generateFakeData();
  }
}
