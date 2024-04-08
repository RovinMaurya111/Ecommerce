import 'package:ecommerce/Utilities/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Home extends StatelessWidget {
  var controller = Get.put(BottomNav());
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce"),
      ),
      //BottomNavigationBar
      bottomNavigationBar: Obx(() {
        return BottomNav().NavBarr();
      }),
      //  Drawer
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "user name",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("This is a user Id")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                ListTile(
                  title: Text("All Product"),
                  leading: Icon(Icons.select_all),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text("Shop By Categary"),
                  leading: Icon(Icons.border_all),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text("Your Order"),
                  leading: Icon(Icons.location_on_outlined),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text("Contact Us"),
                  leading: Icon(Icons.call),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            DrawerHeader(
                child: Center(
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.question_mark_sharp),
              ),
            )),
          ],
        ),
      ),
      body: Center(
        child: Text('This is Home View'),
      ),
    );
  }
}
