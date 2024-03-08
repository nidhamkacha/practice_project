import 'package:flutter/material.dart';
import 'package:practice_project/Listview_builder.dart';
import 'package:practice_project/row_col_stack/food_card.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              dividerColor: Colors.grey,
              indicator: BoxDecoration(),
              // indicatorSize: TabBarIndicatorSize.tab,

              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListViewBuilderScreen(),
              FoodcardScreen(),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
