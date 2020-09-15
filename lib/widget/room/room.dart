import 'package:cards_against_humanity/model/room.dart';
import 'package:cards_against_humanity/screen/card_display_page.dart';
import 'package:cards_against_humanity/screen/room_page.dart';
import 'package:flutter/material.dart';

class RoomRow extends StatelessWidget {
  final Room room;
  final TextStyle smalltextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Helvetica Neue',
    fontSize: 14,
  );

  RoomRow(this.room);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 120,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                room.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica Neue',
                  fontSize: 20,
                ),
              ),
              Text(
                room.isStarted ? 'In progress' : 'Not started',
                style: smalltextStyle,
              ),
              Spacer(),
              Text('Players: ${room.players} / ${room.maxPlayers}', style: smalltextStyle),
              Text('Spectators: ${room.spectators} / ${room.maxSpectators}', style: smalltextStyle),
            ],
          ),
          Spacer(),
          Column(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CardDisplayPage(),
                  ));
                },
                child: Text(
                  'Spectate',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Spacer(),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => RoomPage(roomName: room.name),
                  ));
                },
                child: Text(
                  'Join',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
