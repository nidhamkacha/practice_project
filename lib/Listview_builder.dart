import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List<String> name = [
    'raj',
    'raju',
    'princ',
    'skill',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        // body: ListView.builder(
        //     padding: EdgeInsets.zero,
        //     itemCount: name.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         // margin: EdgeInsets.zero,
        //         child: Column(
        //           children: [
        //             Text(name[index]),
        //             Text(index.toString()),
        //           ],
        //         ),
        //       );
        //     }),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 50.h,
                color: Colors.pink,
              );
            },
            separatorBuilder: (contex, index) {
              return Divider();
            },
            itemCount: 4));
  }
}
