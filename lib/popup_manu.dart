import 'package:flutter/material.dart';

class PopupmanuButtonScreen extends StatefulWidget {
  const PopupmanuButtonScreen({super.key});

  @override
  State<PopupmanuButtonScreen> createState() => _PopupmanuButtonScreenState();
}

enum SampleItem { itemOne, itemTwo, itemThree }

List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _PopupmanuButtonScreenState extends State<PopupmanuButtonScreen> {
  String dropdownValue = list.first;
  SampleItem? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            child: PopupMenuButton<SampleItem>(
              initialValue: selectedItem,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
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
          DropdownButton<String>(
            dropdownColor: Colors.yellow,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 10,
            style: const TextStyle(color: Colors.red),
            underline: Container(
              height: 2,
              color: Colors.yellow,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          DropdownMenu<String>(
            // trailingIcon: Icon(Icons.abc),
            initialSelection: list.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              // setState(() {
              //   dropdownValue = value!;
              // });
            },
            dropdownMenuEntries:
                list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
