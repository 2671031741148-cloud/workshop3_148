import 'package:flutter/material.dart';
import 'package:workshop3_148/model/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  Color getCategoryColor(String type) {
    switch (type) {
      case 'สเต็ก':
        return Colors.orangeAccent.shade200;
      case 'ฟาสฟู้ด':
        return Colors.redAccent.shade100;
      case 'ก๋วยเตี๋ยว':
        return Colors.purple.shade100;
      case 'สุขภาพ':
        return Colors.greenAccent.shade200;
      default:
        return Colors.amberAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการอาหาร"),
      ),
      body: ListView.builder(
        itemCount: emp.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: getCategoryColor(emp[index].type),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        emp[index].name,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ประเภทอาหาร : ${emp[index].type}",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ราคา : ${emp[index].price} บาท",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  emp[index].foodpic.image,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}