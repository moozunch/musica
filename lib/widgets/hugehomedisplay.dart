import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HugeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text('Current Playlist'),
          Container(
            color: Colors.red,
          ),
        ],),
      ),
    );
  }
}