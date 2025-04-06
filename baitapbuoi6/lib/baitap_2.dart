import 'package:flutter/material.dart';

class Bai2 extends StatelessWidget {
    const Bai2({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title of Page 1 _ Thanh Tâm-TMDT"),
        backgroundColor: Colors.blue,               
        foregroundColor: Colors.white
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
                backgroundColor: Colors. blue, 
                foregroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), 
                ),
              ),
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return Page2();
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      return child;
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title of Page 2 _ Thanh Tâm-TMDT"),
        backgroundColor: Colors.blue,               
        foregroundColor: Colors.white
      ),
      body: Center(child: Text('Page 2')),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
