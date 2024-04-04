import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavbar extends StatelessWidget {
  const CupertinoNavbar({super.key});

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Add Image'),
          previousPageTitle: "Explore",
          trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Text('Done'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        child: Text(
          'asdfffffdslsdfsklvndfkvnsdkvndvdnvnnbfldfknbnfnkfnnbfbniffdfsdffvbnff',
          style: TextStyle(color: Colors.black),
        ),
      );
}
