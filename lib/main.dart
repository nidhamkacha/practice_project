import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_project/Listview_builder.dart';
import 'package:practice_project/dialog_screen.dart';
import 'package:practice_project/gridview_widget.dart';
import 'package:practice_project/list_tile.dart';
import 'package:practice_project/listview.dart';
import 'package:practice_project/map_pass.dart';
import 'package:practice_project/popup_manu.dart';
import 'package:practice_project/row_col_stack/food_card.dart';
import 'package:practice_project/row_col_stack/loading.dart';
import 'package:practice_project/row_col_stack/practice.dart';
import 'package:practice_project/stack_widget.dart';
import 'package:practice_project/tabbar_screen.dart';
import 'package:practice_project/text_fromfid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // home: const TextFromFild(),
          // home: PracticeScreen(),
          home: DialogScreen(),
          //home: FoodcardScreen(),
        );
      },
    );
  }
}
