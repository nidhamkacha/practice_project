import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({super.key});

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: ListTile(
              selectedColor: Colors.white,
              selected: true,
              title: Text('data'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.delete_sharp),
              subtitle: Text("gyguyegudfgeu"),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ListTile(
              title: Text('data'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.delete_sharp),
              subtitle: Text("gyguyegudfgeu"),
            ),
          ),
          ListTile(
            title: Text('data'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.delete_sharp),
            subtitle: Text("gyguyegudfgeu"),
          ),
          ListTile(
            title: Text('data'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.delete_sharp),
            subtitle: Text("gyguyegudfgeu"),
          ),
          Card(
            child: Column(
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
