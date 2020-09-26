import 'package:cards_against_humanity/screen/env_test_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load('.env.prod');
  await DotEnv().load('.env.local');

  runApp(MaterialApp(
    title: 'Placeholder',
    home: EnvTestPage(),
  ));
}
