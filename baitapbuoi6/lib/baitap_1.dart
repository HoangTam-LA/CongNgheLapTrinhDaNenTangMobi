import 'package:flutter/material.dart';

class Bai1 extends StatefulWidget {
  const Bai1({super.key});

  @override
  State<StatefulWidget> createState() {
    return Bai1State();
  }
}

class Bai1State extends State<Bai1> {
  String answer = "?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter AlertDialog Example _ Thanh Tâm-TMDT"),
        backgroundColor: Colors.blue,               
        foregroundColor: Colors.white, 
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors. blue, 
                foregroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), 
                ),
              ),
              child: Text("Open Dialog"),
              onPressed: () {
                openMyAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void openMyAlertDialog(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      title: Text("Confirm"),
      content: Text("Are you sure to remove this item?"),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.green, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, 
            foregroundColor: Colors.white, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), 
            ),
          ),
          child: Text("Yes Delete"),
          onPressed: () {
            Navigator.of(context).pop(true);
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
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );

    Future<bool?> futureValue = showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      },
    );

    futureValue.then((value) {
      print("Return value: ${value.toString()}");
      if (value != null) {
        setState(() {
          answer = value ? "Deleted" : "Cancelled";
        });
      }
    });
  }
}
