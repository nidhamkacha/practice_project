import 'package:flutter/material.dart';

class TextFromFild extends StatefulWidget {
  const TextFromFild({super.key});

  @override
  State<TextFromFild> createState() => _TextFromFildState();
}

class _TextFromFildState extends State<TextFromFild> {
  TextEditingController _namecontroller = TextEditingController();
  double isScroll = 0.0;
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
            Text(_namecontroller.text),
            SliderTheme(
              data: SliderThemeData(
                  thumbColor: Colors.green,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10)),
              child: Slider(
                divisions: 10,
                label: isScroll.toString(),
                inactiveColor: Colors.black,
                min: 0,
                max: 100,
                value: isScroll,
                // activeColor: Colors.red,
                onChanged: (double value) {
                  setState(() {
                    isScroll = value;
                  });
                },
              ),
            ),
            //Text(isScroll.toString()),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
