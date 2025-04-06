import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    Widget? nextScreen;
    if (email == "1050070043" && password == "123") {
      nextScreen = const UserInfoScreen1();
    } else if (email == "1050070035" && password == "123") {
      nextScreen = const UserInfoScreen2();
    } else if (email == "1050070005" && password == "123") {
      nextScreen = const UserInfoScreen3();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sai tài khoản hoặc mật khẩu!')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextScreen!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page_Thanh Tâm-TMDT")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              width: 100,
            ),
            const SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: _login,
                child: const Text("Login", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ====================== GIAO DIỆN CHUNG CHO USER INFO ======================
class UserInfoScreen extends StatelessWidget {
  final String name;
  final String description;

  const UserInfoScreen({super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Giữ nút back mặc định
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              description,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Colors.blue, Colors.green, Colors.orange]
                  .map(
                    (color) => Container(
                      width: 60,
                      height: 50,
                      color: color,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),

            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              width: 150,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã nhấn vào nút!')),
                );
              },
              child: const Text('Nhấn vào đây'),
            ),
          ],
        ),
      ),
    );
  }
}

// ====================== CÁC GIAO DIỆN NGƯỜI DÙNG ======================
class UserInfoScreen1 extends StatelessWidget {
  const UserInfoScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserInfoScreen(
      name: 'Hoàng Thị Thanh Tâm',
      description: 'Hoàng Thị Thanh Tâm, 10_TMDT',
    );
  }
}

class UserInfoScreen2 extends StatelessWidget {
  const UserInfoScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserInfoScreen(
      name: 'Huỳnh Ngọc Hân',
      description: 'Huỳnh Ngọc Hân, 10_TMDT',
    );
  }
}

class UserInfoScreen3 extends StatelessWidget {
  const UserInfoScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserInfoScreen(
      name: 'Nguyễn Ngọc Hiền Châu',
      description: 'Nguyễn Ngọc Hiền Châu, 10_TMDT',
    );
  }
}
