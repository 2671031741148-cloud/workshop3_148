import 'package:flutter/material.dart';
import 'package:workshop3_148/screen/item.dart';
import 'package:workshop3_148/model/foodmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cet app 148',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenuPage(), // เรียกหน้าเมนูหลัก
    );
  }
}

// หน้าเมนูหลัก (ทำหน้าที่แทน home.dart)
class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cet app 148"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ปุ่มที่ 1: เข้าสู่หน้าเมนูอาหาร
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Item(), // เปิดหน้า Item
                  ),
                );
              },
              child: const Text(
                "เมนูอาหาร",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // ปุ่มที่ 2: เข้าสู่หน้าข้อมูลพนักงาน / เพื่อน
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StaffPage(), // เปิดหน้าพนักงาน
                  ),
                );
              },
              child: const Text(
                "ข้อมูลพนักงาน",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// หน้าแสดงข้อมูลพนักงาน / เพื่อน (ตามโจทย์รูปอยู่ขวามือ)
class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ข้อมูลพนักงาน / เพื่อน"),
      ),
      body: ListView.builder(
        itemCount: staffList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(
                staffList[index].name,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("ตำแหน่ง: ${staffList[index].position}"),
              // รูปภาพอยู่ฝั่งขวามือ (trailing)
              trailing: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(staffList[index].image),
              ),
            ),
          );
        },
      ),
    );
  }
}