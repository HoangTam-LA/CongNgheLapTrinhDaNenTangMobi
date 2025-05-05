import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/session_card.dart';
import '../constants.dart'; // Import constants.dart
import 'package:flutter/material.dart' hide SearchBar; // Ẩn SearchBar
// Import SearchBar của bạn

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(key: UniqueKey()),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .4, // Giảm chiều cao background
            decoration: BoxDecoration(
              color: COLORS['BLUE_LIGHT'],
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter, // Căn chỉnh ảnh lên trên
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.03,
                    ), // Giảm khoảng cách đầu
                    Text(
                      "Phạm Đình Nam, 10_TMĐT",
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 5), // Giảm khoảng cách
                    Text(
                      "3-10 MIN COURSE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .7, // Tăng chiều rộng text mô tả
                      child: Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: SizedBox(width: size.width * .6),
                    ),
                    Text(
                      "Sessions",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 15, // Tăng khoảng cách ngang
                      runSpacing: 15, // Tăng khoảng cách dọc
                      children: <Widget>[
                        SessionCard(sessionNum: 1, isDone: true, press: () {}),
                        SessionCard(sessionNum: 2, press: () {}),
                        SessionCard(sessionNum: 3, press: () {}),
                        SessionCard(sessionNum: 4, press: () {}),
                        SessionCard(sessionNum: 5, press: () {}),
                        SessionCard(sessionNum: 6, press: () {}),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Related Meditation",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            spreadRadius: -10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                            width: 60,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Start to deepen your practice",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              "assets/icons/Lock.svg",
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ), // Khoảng cách đáy để không bị che bởi BottomNavBar
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
