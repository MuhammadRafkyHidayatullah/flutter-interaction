import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (Context) => HomeScreen(),
    '/home': (Context) => HomeScreen(),
  }));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  String actionLable = 'belum ada aksi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interaction')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  actionLable = 'pengguna melakukan Tap';
                });
              },
              onDoubleTap: () {
                actionLable = 'Pengguna Melakukan Double TAP';
              },
              onLongPress: () {
                actionLable = 'Pengguna Melakukan LongPress';
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            const Text(
              'Aksi',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
