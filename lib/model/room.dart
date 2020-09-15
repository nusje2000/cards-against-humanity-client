import 'dart:convert';

class Room {
  final int id;
  final String name;
  final bool isStarted;
  final int players;
  final int maxPlayers;
  final int spectators;
  final int maxSpectators;

  Room({
    this.id,
    this.name,
    this.isStarted,
    this.players,
    this.maxPlayers,
    this.spectators,
    this.maxSpectators,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as int,
      name: json['name'] as String,
      isStarted: json['isStarted'] as bool,
      players: json['players'] as int,
      maxPlayers: json['maxPlayers'] as int,
      spectators: json['spectators'] as int,
      maxSpectators: json['maxSpectators'] as int,
    );
  }
}

List<Room> parseRooms(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Room>((json) => Room.fromJson(json)).toList();
}