import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. TextButton เปลี่ยนสีข้อความ/ไอคอน
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // 2. FilledButton เปลี่ยนสีพื้นหลัง
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // 3. OutlinedButton เปลี่ยนสีพื้นหลัง (หรือเปลี่ยนสีเส้นขอบ)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
              foregroundColor: Colors.blueGrey, // ปรับสีตัวอักษรให้อ่านง่ายขึ้นบนพื้นหลังสีเหลือง
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // 4. ElevatedButton เปลี่ยนสีพื้นหลัง
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.blueGrey, // ปรับสีตัวอักษรเป็นสีขาว
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}