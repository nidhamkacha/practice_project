import 'package:flutter/material.dart';

class PopupmanuButtonScreen extends StatefulWidget {
  const PopupmanuButtonScreen({super.key});

  @override
  State<PopupmanuButtonScreen> createState() => _PopupmanuButtonScreenState();
}

enum SampleItem { itemOne, itemTwo, itemThree }

class _PopupmanuButtonScreenState extends State<PopupmanuButtonScreen> {
  SampleItem? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: PopupMenuButton<SampleItem>(
          initialValue: selectedItem,
          onSelected: (SampleItem item) {
            setState(() {
              selectedItem = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemOne,
              child: Text('Item 1'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemTwo,
              child: Text('Item 2'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemThree,
              child: Text('Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}
