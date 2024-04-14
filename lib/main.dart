import 'package:ecommerce/ModelView/Drawer.dart';
import 'package:ecommerce/view/NavPages/Home.dart';
import 'package:ecommerce/view/NavPages/Profile.dart';
import 'package:ecommerce/view/NavPages/Setting.dart';
import 'package:ecommerce/view/splash/splash1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ModelView/BottonNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  //
  List<Widget> containerss = [
    HomeContainer(),
    ProfileContainer(),
    SettingContainer(),
  ];

  var controller = Get.put(BottomNav());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Container'),
        ),
        // body: Obx(() => controller2.Routee()),
        drawer: Drawerr().drawerr(),
        bottomNavigationBar: Obx(() => controller.BotNav()),
        body: Obx(
          () => Center(
            child: containerss.elementAt(controller.currentIndex.value),
          ),
        )

        //
        );
//
  }
}
