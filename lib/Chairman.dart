import 'package:flutter/material.dart';

import 'main.dart';


DevInfo chairman=DevInfo();

class ChairMsg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        child: Column(
          children: [
            DevInfo(),
            Text('This is a example message'),
          ],
        ),

      )
    );
  }
}
