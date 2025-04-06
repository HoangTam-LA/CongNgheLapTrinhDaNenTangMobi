import 'package:flutter/material.dart';

class Bai3 extends StatelessWidget {
  const Bai3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter _ Thanh Tâm-TMDT'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton( // Nút Back để quay lại
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), 
                ),
              ),
              child: Text('Go to Details Page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Details()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), 
                ),
              ),
              child: Text('Go to About Page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Details Page _ Thanh Tâm-TMDT"),
        backgroundColor: Colors.blue,               
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, 
            foregroundColor: Colors.white, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), 
            ),
          ),
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of About Page _ Thanh Tâm-TMDT"),
        backgroundColor: Colors.blue,               
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, 
            foregroundColor: Colors.white, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), 
            ),
          ),
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.cyan[100],
    );
  }
}
