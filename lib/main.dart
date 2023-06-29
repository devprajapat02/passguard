import 'package:flutter/material.dart';
import './view.dart';
import './add.dart';
import './remove.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  
  int activePage = 0;

  Widget getActivePage() {
    switch (activePage) {
      case 0:
        return const ViewPage();
      case 1:
        return const AddPage();
      case 2:
        return const RemovePage();
      default:
        return const ViewPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pass Guard')),
      body: Container(
        child: Center(
          child: getActivePage(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_stream),
            label: 'View',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Add',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_circle),
              label: 'Remove',
          ),
        ],
        currentIndex: activePage,
        onTap: (int index) {
          setState(() {
            activePage = index;
          });
        },
      )
    );
  }
}

