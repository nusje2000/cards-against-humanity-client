import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvTestPage extends StatefulWidget {
  final String env = DotEnv().env['API_URL'];

  @override
  _EnvTestPageState createState() => _EnvTestPageState();
}

class _EnvTestPageState extends State<EnvTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(widget.env),
        ),
      ),
    );
  }
}
