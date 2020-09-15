import 'package:cards_against_humanity/model/room.dart';
import 'package:cards_against_humanity/service/game_service.dart';
import 'package:cards_against_humanity/widget/room/room.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatefulWidget {
  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  Future<List<Room>> futureGames;

  @override
  void initState() {
    super.initState();

    futureGames = fetchGames();
  }

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
        child: FutureBuilder<List<Room>>(
          future: futureGames,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }

            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.separated(
              padding: EdgeInsets.all(8),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) => RoomRow(snapshot.data[index]),
              separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8),
            );
          },
        ),
      ),
    );
  }
}
