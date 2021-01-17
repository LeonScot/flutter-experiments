import 'package:flutter/material.dart';

import 'charts.dart';
import 'data_table.dart';
import 'secondary_topbar.dart';
import 'topbar.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.blue[300],
        child: Column(
          children: [
            TopBar(),
            Expanded(
              flex: 2,
              child: SecondaryTopBar(),
            ),
            Expanded(
              flex: 7,
              child: Charts(),
            ),
            Expanded(
              flex: 11,
              child: Container(
                margin: EdgeInsets.all(10),
                // color: Colors.limeAccent,
                child: MyStatefulWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
