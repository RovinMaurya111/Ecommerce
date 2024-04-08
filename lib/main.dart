import 'package:ecommerce/View/bottomNavPages/cart.dart';
import 'package:ecommerce/View/bottomNavPages/home.dart';
import 'package:ecommerce/View/bottomNavPages/profile.dart';
import 'package:ecommerce/View/bottomNavPages/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/search', page: () => Setting()),
        GetPage(name: '/basket', page: () => Cart()),
        GetPage(name: '/profile', page: () => Profile()),
        // Add more routes for other screens as needed
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: Home(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
