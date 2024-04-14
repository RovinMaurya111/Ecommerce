// after useing firebase this class will be used

import 'package:ecommerce/Utilis/Snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatAc extends StatefulWidget {
  @override
  State<CreatAc> createState() => _CreatAcState();
}

class _CreatAcState extends State<CreatAc> {
  var controller = Get.put(Snackbarr());
  var FinalName = ""; // Initialize these variables to avoid null error
  var FinalEmail = "";
  var FinalPass = "";

  @override
  void initState() {
    super.initState();
    // getValue();
    // Login().LoginData(FinalEmail, FinalPass);
  }

  var name;
  var email;
  var pass;

  var Name = TextEditingController();
  var Email = TextEditingController();
  var Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.blue,
                child: Container(
                  width: 160,
                  height: 160,
                  child: Image.asset('image/androidStudio.png'),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: Name,
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Email,
                decoration: InputDecoration(labelText: 'Email Id'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Password,
                decoration: InputDecoration(labelText: 'Create Password'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  name = Name.text.toString();
                  email = Email.text.toString();
                  pass = Password.text.toString();

                  if (name.isEmpty || email.isEmpty || pass.isEmpty) {
                  } else {
                    // var pre = await SharedPreferences.getInstance();
                    // pre.setString("KeyName", name);
                    // pre.setString("KeyEmail", email);
                    // pre.setString("KeyPassword", pass);
                    // setState(() {
                    //   getValue();
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             Login(FinalName, FinalEmail, FinalPass)),
                    //   );
                    // });
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(builder: (context) => Login()),
                  // );
                },
                child: Text('Login', style: TextStyle(color: Colors.blue)),
              ),
              Text(FinalName),
              Text(FinalEmail),
              Text(FinalPass)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getValue() async {
    // var Getpre = await SharedPreferences.getInstance();
    // setState(() {
    //   FinalName = Getpre.getString("KeyName") ?? ""; // Use ?? to handle null
    //   FinalEmail = Getpre.getString("KeyEmail") ?? "";
    //   FinalPass = Getpre.getString("KeyPassword") ?? "";
    // });
  }
}
