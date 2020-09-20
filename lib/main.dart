import 'package:cards_against_humanity/screen/rooms_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  await FlutterConfig.loadEnvVariables();

  runApp(MaterialApp(
    title: 'Card Against Humanity',
    home: RoomsPage(),
  ));
}
