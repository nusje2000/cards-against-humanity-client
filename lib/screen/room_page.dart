import 'package:cards_against_humanity/screen/lobby_page.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  final String roomName;

  const RoomPage({Key key, @required this.roomName}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomName),
        backgroundColor: Color.fromRGBO(55, 71, 79, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => LobbyPage(),
              ));
            },
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(55, 71, 79, 1),
      body: SafeArea(
        child: Center(
          child: Text('nice lobby bro'),
        ),
      ),
    );
  }
}
