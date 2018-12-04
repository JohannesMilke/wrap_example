import 'dart:math';

import 'package:flutter/material.dart';

class CharWidget extends StatelessWidget {
  final String char;

  const CharWidget({
    @required this.char,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = 60.0;

    return Container(
      color: Theme.of(context).accentColor,
      width: size,
      height: size,
      transform: rotateMatrix(),
      child: FittedBox(
        child: Text(char),
        fit: BoxFit.contain,
      ),
    );
  }

  Matrix4 rotateMatrix() {
    final List<double> rotation = [
      -pi / 16,
      pi / 16,
      -pi / 8,
      pi / 8,
    ];

    final rotationZ =
        rotation[Random(1278732 + char.codeUnitAt(0)).nextInt(rotation.length)];

    return Matrix4.identity()..rotateZ(rotationZ);
  }
}
