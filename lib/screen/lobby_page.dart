import 'package:cards_against_humanity/widget/lobby/lobby.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatefulWidget {
  final List<Lobby> lobbies = [
    Lobby(roomName: 'EdgeLord\'s room', roomId: 'AX6T'),
    Lobby(roomName: 'Santa\'s room', roomId: '56D8'),
    Lobby(roomName: 'Mom\'s room', roomId: 'D95F'),
  ];

  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 71, 79, 1),
      body: SafeArea(
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children: List<Lobby>.generate(
            widget.lobbies.length,
            (index) => widget.lobbies[index],
          ),
        ),
      ),
    );
  }
}
