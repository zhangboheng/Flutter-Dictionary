// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:transparent_image/transparent_image.dart' show kTransparentImage;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Example',
      home: LocalAuthExample(),
    );
  }
}

class LocalAuthExample extends StatefulWidget {
  const LocalAuthExample({Key? key}) : super(key: key);

  @override
  _LocalAuthExampleState createState() => _LocalAuthExampleState();
}

class _LocalAuthExampleState extends State<LocalAuthExample> {
  bool _authSuccess = false;
  late LocalAuthentication _localAuth;

  @override
  void initState() {
    super.initState();
    _localAuth = LocalAuthentication();
  }

  Future<bool> _auth() async {
    setState(() => _authSuccess = false);
    if (await _localAuth.canCheckBiometrics == false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Your device is NOT capable of checking biometrics.\n'
              'This demo will not work on your device!\n'
              'You must have android 6.0+ and have fingerprint sensor.'),
        ),
      );
      return false;
    }
    try {
      final authSuccess = await _localAuth.authenticate(
          localizedReason: 'Auth in to see hidden image', biometricOnly: true);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('authSuccess=$authSuccess')),
      );
      return authSuccess;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
        ElevatedButton(
          child: Text('Click Me'),
          onPressed: () async {
            final authSuccess = await _auth();
            setState(() => _authSuccess = authSuccess);
          },
        ),
        if (_authSuccess)
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const AssetImage('assets/images/dartlearning.jpg'),
          )
        else
          const Placeholder(),
      ],
    );
  }
}
