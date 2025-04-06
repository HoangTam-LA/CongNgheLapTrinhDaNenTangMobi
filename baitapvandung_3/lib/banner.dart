import 'package:flutter/material.dart';

class BannerApp extends StatelessWidget {
  const BannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Banner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Banner Example")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Hoàng Thị Thanh Tâm_TMDT',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.topCenter,
              child: Banner(
                message: 'Offer 20% off',
                location: BannerLocation.topEnd,
                color: Colors.red,
                child: SizedBox(
                  height: 186,
                  width: 280,
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.IxSQxenayDYM2oZcHwj7PgHaEo?rs=1&pid=ImgDetMain',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
