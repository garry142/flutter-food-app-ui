import 'package:flutter/material.dart';
import 'package:food_app_ui/header_parts.dart';
import 'package:food_app_ui/items_diplay.dart';
import 'package:food_app_ui/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.white,
   //for Botton Navegation Bar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        selectedItemColor: primaryColors,
        unselectedItemColor: Colors.green[200],
        items: const[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 40,
            ),
            label: 'Home'),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,),
            label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,),
              label: 'Cart'),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,),
              label: 'Notification'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,),
                label: 'Favorite' ),

      ],),
      body: ListView(
        children: const [
          SizedBox(
            height: 15,
            ),
             //for header parts
          HeaderParts(),
         //for Body parts
          ItemsDiplay(),
        ],
      ),
    );
  }
}
