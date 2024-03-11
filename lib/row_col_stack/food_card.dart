import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodcardScreen extends StatefulWidget {
  const FoodcardScreen({super.key});

  @override
  State<FoodcardScreen> createState() => _FoodcardScreenState();
}

class _FoodcardScreenState extends State<FoodcardScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          width: width * 0.5,
          height: height * 0.35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "images/21369390.jpg",
                    fit: BoxFit.fill,
                    height: 150,
                  ),
                ),
                Text(
                  "Hot Burger",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Taste Our Hot Burger",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 16,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  onRatingUpdate: (index) {},
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$10",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.favorite_border)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
