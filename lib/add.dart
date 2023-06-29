import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  bool showPassword = false;

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
            child: TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: 'Enter password',
                icon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(showPassword? Icons.visibility_off: Icons.visibility),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Add")
            ),
          ),
        ],
      ),
    );
  }
}