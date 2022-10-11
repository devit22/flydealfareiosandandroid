import 'package:flutter/material.dart';

class MultiCity extends StatefulWidget {
  const MultiCity({Key? key}) : super(key: key);

  @override
  State<MultiCity> createState() => _MultiCityState();
}

class _MultiCityState extends State<MultiCity> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Multi City"));
  }
}
