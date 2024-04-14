import 'package:ecommerce/Utilis/DrawerItems.dart';
import 'package:ecommerce/view/DrawerNavPages/About.dart';
import 'package:ecommerce/view/DrawerNavPages/All%20Product.dart';
import 'package:ecommerce/view/DrawerNavPages/Contact.dart';
import 'package:ecommerce/view/DrawerNavPages/Shop%20By%20Category.dart';
import 'package:ecommerce/view/DrawerNavPages/Your%20Order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Drawerr extends GetxController {
  var controller = Get.put(DItems());
  Drawer drawerr() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    SizedBox(height: 35),
                    Text(
                      'Rovin Maurya',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Email ID: 123456',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50), // Adjust the height of the SizedBox as needed
          ListTile(
            leading: Icon(Icons.border_all_rounded),
            title: Text('All Product'),
            onTap: () {
              Get.to(AllProduct());
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.add_shopping_cart_outlined),
            title: Text('Category'),
            onTap: () {
              Get.to(Categary());
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Your Order'),
            onTap: () {
              Get.to(Order());
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.support_agent_sharp),
            title: Text('Contact'),
            onTap: () {
              Get.to(Contact());
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text('About'),
            onTap: () {
              Get.to(About());
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
