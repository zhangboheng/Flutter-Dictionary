// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import the email validator package
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Tutorial',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();

  // This message will be displayed under the email input
  String message = '';

  void validateEmail(String enteredEmail){
    if(EmailValidator.validate(enteredEmail)){
      setState(() {
        message = 'Your email seems nice!';
      });
    } else {
      setState(() {
        message = 'Please enter a valid email address!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
          child: Column(children: [
            // Input email
            TextField(
              decoration: InputDecoration(labelText: 'Your Email'),
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              onChanged: (enteredEmail) => validateEmail(enteredEmail),
            ),

            // Just add some space
            SizedBox(height: 20),

            // Display the message
            Text(message)
          ]),
        ));
  }
}
