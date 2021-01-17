import 'package:flutter/material.dart';

class Charts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    child: Text('card 1'),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Text('card 2'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card(
              child: Text('card 3'),
            ),
          ),
          Expanded(
            child: Card(
              child: Text('card 4'),
            ),
          ),
        ],
      ),
    );
  }
}
