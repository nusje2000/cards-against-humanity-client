import 'package:flutter/material.dart';

abstract class BaseCard extends StatelessWidget {
  final Color color;
  final String text;

  const BaseCard({Key key, @required this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: AspectRatio(
        aspectRatio: 63 / 88,
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color:
                    color.computeLuminance() > .5 ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
