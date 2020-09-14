import 'package:cards_against_humanity/widget/lobby/lobby.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatefulWidget {
  final List<Widget> lobbies = [
    Lobby(roomName: 'EdgeLord\'s game', roomId: 'AX6T'),
    Lobby(roomName: 'Santa\'s game', roomId: '56D8'),
    Lobby(roomName: 'Crowbar\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Soap\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Squirt gun\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Rat\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Tube of Lipstick\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Martini\'s game', roomId: 'D95F'),
    Lobby(roomName: 'Stop sign\'s game', roomId: 'D95F'),
  ];

  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lobbies'),
        backgroundColor: Color.fromRGBO(55, 71, 79, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(55, 71, 79, 1),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.all(8),
          itemCount: widget.lobbies.length,
          itemBuilder: (BuildContext context, int index) => widget.lobbies[index],
          separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8),
        ),
      ),
    );
  }
}
