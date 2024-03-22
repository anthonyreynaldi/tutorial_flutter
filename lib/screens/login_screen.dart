import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tutorial_flutter/screens/test_screen.dart';
import 'package:tutorial_flutter/widgets/custom_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  clickRegis(){
    print("ini regisss");
    // Navigator.push(context, MaterialPageRoute(builder: (builder) => TestScreen()));
    Navigator.pushNamed(context, "/feed");
  }

  clickLogin(){
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => TestScreen()));
    Navigator.pushReplacementNamed(context, "/test");

  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailC = new TextEditingController();
    TextEditingController fnameC = new TextEditingController();
    TextEditingController lnameC = new TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomInput(controller: emailC, label: "Email"),
          CustomInput(controller: fnameC, label: "First Name"),
          CustomInput(controller: lnameC, label: "Last Name"),
          
          FilledButton(onPressed: clickRegis, child: Text('Register')),
          FilledButton(onPressed: clickLogin, child: Text('Login'))
        ],
      ),
    );
  }
}