import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Utilis/Snackbar.dart';
import 'CreatAc.dart';

class Login extends StatelessWidget {
  var controller = Get.put(Snackbarr());
  //user stored data
  String LName = '';
  String Lid = '';
  String Lpass = '';

  //EditTextcontroller
  var id = TextEditingController();
  var password = TextEditingController();

  // Constructor with optional parameters and perameters setting in three variables
  Login([
    String name = "",
    String email = "",
    String password = "",
  ]) {
    this.LName = name;
    this.Lid = email;
    this.Lpass = password;
  }

  // void LoginData(var id, var password) {
  //   this.Lid = id;
  //   this.Lpass = password;
  // }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          child: Column(
            children: [
              Container(
                width: 160,
                height: 160,
                child: Image.asset('img/logo.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: id,
                decoration: InputDecoration(label: Text('Email Id')),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(label: Text('Password')),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orange.shade900),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Get.to(MyHomePage(title: "Ecommerce"));
                    // if user
                    // var a = id.text.toString();
                    // var b = password.text.toString();
                    // if (Lid == a && Lpass == b) {
                    //   Get.to(MyHomePage(title: "Ecommerce"));
                    // } else {
                    //   // need to check why it is not working
                    //   controller.snackbarr(context, "Wrong Id and Password");
                    // }
                  },
                  child: Text('Login')),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(CreatAc());
                },
                child: Text(
                  'Creat Account',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
