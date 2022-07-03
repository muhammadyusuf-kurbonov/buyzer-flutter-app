import 'package:flutter/material.dart';
import 'model/buy_list.dart';

class ListsRepository {


  final List<BuyList> lists = List.empty(growable: true);

  void generateFakeData(){
    lists.add(BuyList("Super List", Colors.blue, List.empty()));
    lists.add(BuyList("Корзинка 🛒", Colors.blue, List.empty()));
    lists.add(BuyList("Bauhaus 🛠🪚🔩", Colors.green, ["Дверная ручка", "Ножницы"]));
    lists.add(BuyList("Amazon", Colors.red, List.empty()));
  }

  ListsRepository(){
    generateFakeData();
  }
}