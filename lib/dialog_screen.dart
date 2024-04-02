import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  dialogOpen("ufeuf");
                },
                child: Text('Alertdialog')),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        titlePadding: EdgeInsets.zero,
                        buttonPadding: EdgeInsets.zero,
                        title: const Text('Basic dialog title'),
                        content: const Text(
                          'A dialog is a type of modal window that\n'
                          'appears in front of app content to\n'
                          'provide critical information, or prompt\n'
                          'for a decision to be made.',
                        ),
                        actions: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            child: const Text('Disable'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            child: const Text('Enable'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Text("Showdialog"),
            ),
            Switch(
              
              value: light,
              activeColor: Colors.red,
              inactiveThumbColor: Colors.green,
              trackOutlineColor: MaterialStatePropertyAll(Colors.red),
              
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  dialogOpen(String title) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
