import 'package:flutter/material.dart';

class RemovePage extends StatefulWidget {
  const RemovePage({super.key});

  @override
  State<RemovePage> createState() => _RemovePageState();
}

class _RemovePageState extends State<RemovePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter Domain Name',
                icon: Icon(Icons.domain)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Remove")
            ),
          ),
        ],
      ),
    );
  }
}