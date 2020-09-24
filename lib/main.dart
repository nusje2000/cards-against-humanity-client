import 'package:cards_against_humanity/screen/env_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load();

  runApp(MaterialApp(
    title: 'Placeholder',
    home: EnvPage(),
  ));
}
