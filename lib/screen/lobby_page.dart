import 'package:flutter/material.dart';

class LobbyPage extends StatefulWidget {
  LobbyPage({Key key}) : super(key: key);

  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Welcome to the lobby page'),
        ),
      ),
    );
  }
}
