import 'package:cards_against_humanity/model/room.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<List<Room>> fetchGames() async {
    final response = await rootBundle.loadString('assets/mock/rooms.json');

    return compute(parseRooms, response);
}
