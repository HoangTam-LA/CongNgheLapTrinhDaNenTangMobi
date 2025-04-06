import 'package:flutter/material.dart';
import 'login.dart';
import 'baitap_1.dart';
import 'baitap_2.dart';
import 'baitap_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ứng dụng Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang chủ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(context, 'Bài 1', const Bai1()),
            const SizedBox(height: 15), // Khoảng cách giữa các nút
            _buildButton(context, 'Bài 2', const Bai2()),
            const SizedBox(height: 15),
            _buildButton(context, 'Bài 3', const Bai3()),
            const SizedBox(height: 15),
            _buildButton(context, 'Đăng nhập', const Login()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return SizedBox(
      width: 200, // Định chiều rộng đồng đều cho các nút
      height: 50, // Định chiều cao nút
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Bo góc mềm mại hơn
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
