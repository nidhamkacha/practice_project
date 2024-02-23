import 'package:flutter/material.dart';

class TextFromFild extends StatefulWidget {
  const TextFromFild({super.key});

  @override
  State<TextFromFild> createState() => _TextFromFildState();
}

class _TextFromFildState extends State<TextFromFild> {
  TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _namecontroller.text = value;
                });
              },
              controller: _namecontroller,
              decoration: InputDecoration(
                // focusColor: Colors.red,
                icon: Icon(Icons.add),
                // hintText: 'Name',
                labelText: 'name',
                suffixIcon: Icon(Icons.read_more),
                prefixIcon: Icon(Icons.mobile_friendly),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text(_namecontroller.text)
          ],
        ),
      ),
    );
  }
}
