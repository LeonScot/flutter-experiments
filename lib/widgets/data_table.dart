import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const int numItems = 20;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);

  Widget _widthAbove900() {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: _dataTable(),
      ),
    );
  }

  Widget _widthBelow900() {
    return SizedBox(
      width: 900,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _dataTable(),
        ),
      ),
    );
  }

  Widget _dataTable() {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text('Store Name'),
        ),
        DataColumn(
          label: Text('Service Name'),
        ),
        DataColumn(
          label: Text('Date'),
        ),
        DataColumn(
          label: Text('Message'),
        ),
      ],
      rows: List<DataRow>.generate(
        numItems,
        (index) => DataRow(
          cells: [
            DataCell(Text('Magento $index | D365')),
            DataCell(Text('Customer Create')),
            DataCell(Text('18 Jul 2019 18:07:05')),
            DataCell(Text('Inventory  for ”Phones” successfully synced')),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 900) {
        return _widthAbove900();
      } else {
        return _widthBelow900();
      }
    });
  }
}
