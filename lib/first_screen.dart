import 'package:flutter/material.dart';
import 'package:food_app_ui/home_page.dart';
import 'package:food_app_ui/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              "asset/fourth.png",
              height: 300,
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Fat delievery at \n your doorstep",
                style: TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                " Home delievery  and online reservation \n system for restaurant and cafe ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.all(60),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    "Lets Explore",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: primaryColors),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
