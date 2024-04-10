import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  String Contry = "";
  DateTime? date;
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
            ElevatedButton(
              child: const Text('showModalBottomSheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300,
                      // width: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.width / 3,
                child: Center(
                    child: TextField(
                  controller: dateInput,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('dd/MM/yyyy').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        dateInput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ))),
            if (date == null) ...[
              const Text(
                'Select Date',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ] else ...[
              Text(date!.toString()),
            ],
            ElevatedButton(
              onPressed: () async {
                await showCupertinoModalPopup<void>(
                  context: context,
                  builder: (_) {
                    final size = MediaQuery.of(context).size;
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      height: size.height * 0.27,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (value) {
                          date = value;
                          setState(() {});
                        },
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Date Picker'),
            ),
            Center(
              child: TextField(
                controller: dateInput,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Enter Time",
                ),
                readOnly: true,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  if (pickedTime != null) {
                    String formattedTime =
                        "${pickedTime.hour}:${pickedTime.minute}";
                    print("Formatted Time: $formattedTime");
                    setState(() {
                      dateInput.text = formattedTime;
                    });
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showCountryPicker(
                      context: context,
                      countryListTheme: CountryListThemeData(
                        flagSize: 25,
                        backgroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.blueGrey),
                        bottomSheetHeight:
                            500, // Optional. Country list modal height
                        //Optional. Sets the border radius for the bottomsheet.
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        //Optional. Styles the search field.
                        inputDecoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Start typing to search',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      onSelect: (Country country) {
                        print('Select country: ${country.displayName}');
                        setState(() {
                          Contry = country.displayName;
                        });
                      });
                },
                child: Text('Contry Picker')),
            Text(Contry),
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
