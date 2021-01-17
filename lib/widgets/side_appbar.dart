import 'package:flutter/material.dart';

class SideAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 61,
      color: Colors.red[300],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.devices),
            ],
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.dashboard),
                    Icon(Icons.notifications),
                    Icon(Icons.settings),
                    Icon(Icons.dock_rounded),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
