import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buoi 5',
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
      appBar: AppBar(title: const Text('Trang chủ của Hoàng Tâm')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai21()),
                );
              },
              child: const Text('Bài 1'),
            ),
            SizedBox(height: 10), // Thêm khoảng cách
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai22()),
                );
              },
              child: const Text('Bài 2'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai23()),
                );
              },
              child: const Text('Bài 3'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai24()),
                );
              },
              child: const Text('Bài 4'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai25()),
                );
              },
              child: const Text('Bài 5'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai26()),
                );
              },
              child: const Text('Bài 6'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai27()),
                );
              },
              child: const Text('Bài 7'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai28()),
                );
              },
              child: const Text('Bài 8'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai29()),
                );
              },
              child: const Text('Bài 9'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bai30()),
                );
              },
              child: const Text('Bài 10'),
            ),
          ],
        ),
      ),
    );
  }
}


class Bai21 extends StatelessWidget {
  const Bai21({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter RotatedBox Example - Thanh Tâm_TMĐT")),
      body: Center(
        child: RotatedBox(
          quarterTurns: -1,
          child: SizedBox(
            width: 250,
            height: 25,
            child: LinearProgressIndicator(
              backgroundColor: Colors.cyan[100],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}

class Bai22 extends StatelessWidget {
  const Bai22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Card Example - Thanh Tâm_TMĐT")),
      body: Card(
        margin: EdgeInsets.all(10),
        color: Colors.green[100],
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, color: Colors.cyan, size: 45),
              title: Text("Let's Talk About Love", style: TextStyle(fontSize: 20)),
              subtitle: Text('Modern Talking Album'),
            ),
          ],
        ),
      ),
    );
  }
}

class Bai23 extends StatelessWidget {
  const Bai23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter CircleAvatar Example - Thanh Tâm_TMĐT")),
      body: Center(
        child: CircleAvatar( 
          radius: 110, 
          foregroundColor: Colors.red, 
          child: Text( 
            'HTTT',
            style: TextStyle( 
                fontSize: 90 
            ), 
          ), 
        ) 
      ),
    );
  }
}

class Bai24 extends StatefulWidget {
  const Bai24({super.key});

  @override
  _Bai24State createState() => _Bai24State();
}

class _Bai24State extends State<Bai24> {
  Color splashColor = Colors.blue.withOpacity(0.5); // Màu ban đầu

  void _changeColor() {
    setState(() {
      splashColor = Color.fromRGBO(
        Random().nextInt(256), // Giá trị R
        Random().nextInt(256), // Giá trị G
        Random().nextInt(256), // Giá trị B
        0.5, // Độ trong suốt
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IconButton Example - Thanh Tâm_TMĐT"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            _changeColor(); // Đổi màu khi nhấn
            print("Pressed");
          },
          borderRadius: BorderRadius.circular(50),
          splashColor: splashColor, // Màu lan khi nhấn
          highlightColor: splashColor.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.directions_bus,
              size: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class Bai25 extends StatelessWidget {
  const Bai25({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("TextButton Example - Thanh Tâm_TMĐT"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                icon: Icon(Icons.add_shopping_cart, color: Colors.white),
                label: Text("Dark", style: TextStyle(color: Colors.white)),
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
              TextButton.icon(
                icon: Icon(Icons.add_shopping_cart, color: Colors.black),
                label: Text("Light", style: TextStyle(color: Colors.black)),
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.green[300]),
              ),
              TextButton.icon(
                icon: Icon(Icons.monetization_on, color: Colors.white),
                label: Text("Dark", style: TextStyle(color: Colors.white)),
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
              TextButton.icon(
                icon: Icon(Icons.monetization_on, color: Colors.black),
                label: Text("Light", style: TextStyle(color: Colors.black)),
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.blue[300]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Bai26 extends StatelessWidget {
  const Bai26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TextButton Example - Thanh Tâm_TMĐT"),
      ),
      body: Center(
        child: TextButton(
          child: Text("TextButton 1"),
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.red;
                }
                return Colors.white;
              },
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.yellow;
                }
                return Colors.blue;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Bai27 extends StatelessWidget {
  const Bai27({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter ElevatedButton Example - Thanh Tâm_TMĐT",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.settings, color: Colors.white),
          label: Text("Settings", style: TextStyle(color: Colors.white)),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shadowColor: Colors.redAccent,
            elevation: 10, 
            minimumSize: Size(100, 80),
          ),
        ),
      ),
    );
  }
}

class Bai28 extends StatelessWidget {
  const Bai28({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter SnackBar Example - Thanh Tâm_TMĐT",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue, // Màu nền AppBar
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue, // Màu nền FAB
        child: Icon(Icons.add, color: Colors.white), // Màu icon
        onPressed: () {},
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext ctxOfScaffold) {
            return ElevatedButton(
              child: Text('Show SnackBar', style: TextStyle(color: Colors.white)),
              onPressed: () {
                _showSnackBarMsgDeleted(ctxOfScaffold);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Màu nền button
              ),
            );
          },
        ),
      ),
    );
  }

  void _showSnackBarMsgDeleted(BuildContext ctxOfScaffold) {
    final snackBar = SnackBar(
      content: Text('Message is deleted!', style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue, // Màu nền SnackBar
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.white, // Màu chữ của action
        onPressed: () {
          _showSnackBarMsgRestored(ctxOfScaffold);
        },
      ),
    );

    ScaffoldMessenger.of(ctxOfScaffold).showSnackBar(snackBar);
  }

  void _showSnackBarMsgRestored(BuildContext ctxOfScaffold) {
    final snackBar = SnackBar(
      content: Text('Message is restored!', style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue, // Màu nền SnackBar
    );

    ScaffoldMessenger.of(ctxOfScaffold).showSnackBar(snackBar);
  }
}

class Bai29 extends StatelessWidget {
  const Bai29({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tween Example - Thanh Tâm_TMĐT"),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.add_shopping_cart, color: Colors.black),
                label: Text("Add To Cart", style: TextStyle(color: Colors.black)),
                onPressed: () {},
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.monetization_on, color: Colors.black),
                label: Text("Buy Now", style: TextStyle(color: Colors.black)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
              ElevatedButton(
                child: Text("Reset", style: TextStyle(color: Colors.black)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Bai30 extends StatefulWidget {
  const Bai30({super.key});

  @override
  State<Bai30> createState() => MyHomePageState();
}

class MyHomePageState extends State<Bai30> {
  ProgrammingLanguage? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter SimpleDialog Example"),
        backgroundColor: Colors.blue, // Màu nền xanh
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select a Language", style: TextStyle(color: Colors.white)), // Chữ màu trắng
              onPressed: () {
                showMyAlertDialog(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), // Nút màu xanh
            ),
            SizedBox(height: 10),
            Text(
              "Selected Language: " + (selectedLanguage == null ? '?' : selectedLanguage!.name),
              style: TextStyle(color: Colors.blue, fontSize: 16), // Chữ màu xanh
            ),
          ],
        ),
      ),
    );
  }

  void showMyAlertDialog(BuildContext context) {
    var javascript = ProgrammingLanguage("Javascript", 67.7);
    var htmlCss = ProgrammingLanguage("HTML/CSS", 63.1);
    var sql = ProgrammingLanguage("SQL", 57.4);

    // Create SimpleDialog
    SimpleDialog dialog = SimpleDialog(
      title: const Text('Select a Language:', style: TextStyle(color: Colors.blue)), // Chữ màu xanh
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, javascript);
          },
          child: Text(javascript.name, style: TextStyle(color: Colors.blue)), // Chữ màu xanh
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, htmlCss);
          },
          child: Text(htmlCss.name, style: TextStyle(color: Colors.blue)), // Chữ màu xanh
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, sql);
          },
          child: Text(sql.name, style: TextStyle(color: Colors.blue)), // Chữ màu xanh
        ),
      ],
    );

    // Show dialog and update state when user selects an option
    showDialog<ProgrammingLanguage>(
      context: context,
      builder: (BuildContext context) => dialog,
    ).then((language) {
      if (language != null) {
        setState(() {
          selectedLanguage = language;
        });
      }
    });
  }
}

class ProgrammingLanguage {
  String name;
  double percent;

  ProgrammingLanguage(this.name, this.percent);
}