import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      color: Colors.yellow,
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.blueAccent,
              child: Text(
                'Breadcrumb',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
              child: Text(
                'Running',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
