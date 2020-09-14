import 'package:flutter/material.dart';

class Lobby extends StatelessWidget {
  final String roomName;
  final String roomId;

  Lobby({@required this.roomName, @required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Text(roomName),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  border: Border(bottom: BorderSide(color: Colors.blueGrey)),
                ),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text('Join'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.white.withOpacity(.5),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text('Spectate'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
