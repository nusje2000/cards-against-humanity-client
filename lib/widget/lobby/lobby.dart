import 'package:flutter/material.dart';

class Lobby extends StatelessWidget {
  final String roomName;
  final String roomId;
  final TextStyle smalltextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Helvetica Neue',
    fontSize: 14,
  );

  Lobby({@required this.roomName, @required this.roomId});

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
                roomName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica Neue',
                  fontSize: 20,
                ),
              ),
              Text('In progress', style: smalltextStyle),
              Spacer(),
              Text('Players: 6 / 10', style: smalltextStyle),
              Text('Spectators: 0 / 10', style: smalltextStyle),
            ],
          ),
          Spacer(),
          Column(
            children: [
              RaisedButton(
                onPressed: () {},
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
                onPressed: () {},
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
