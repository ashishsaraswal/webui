import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:webdemo/data.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.table_chart,
                    color: Colors.black,
                  ),
                  label: Text('Table')),
            ],
          ),
          SizedBox(
            width: 20,
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton(items: [
                DropdownMenuItem(
                  value: 'Best seller',
                  child: Text('top sales'),
                ),
                DropdownMenuItem(child: Text('Best seller'))
              ], onChanged: (value) {})
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DataTable(
                      headingRowColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.grey.shade200),
                      columns: [
                        DataColumn(label: Text('id')),
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Size')),
                        DataColumn(label: Text('Price')),
                        DataColumn(label: Text('Availablity')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(
                            Text('Sneaker'),
                          ),
                          DataCell(
                            Text('42'),
                          ),
                          DataCell(
                            Text('\$23'),
                          ),
                          DataCell(
                            Text('1'),
                          )
                        ]),
                        DataRow(cells: [
                          DataCell(Text('2')),
                          DataCell(
                            Text('Jordan'),
                          ),
                          DataCell(
                            Text('44'),
                          ),
                          DataCell(
                            Text('\$230'),
                          ),
                          DataCell(
                            Text('5'),
                          )
                        ]),
                        DataRow(cells: [
                          DataCell(Text('3')),
                          DataCell(
                            Text('Sliper'),
                          ),
                          DataCell(
                            Text('48'),
                          ),
                          DataCell(
                            Text('\$150'),
                          ),
                          DataCell(
                            Text('3'),
                          )
                        ]),
                        DataRow(cells: [
                          DataCell(Text('4')),
                          DataCell(
                            Text('Nike'),
                          ),
                          DataCell(
                            Text('42'),
                          ),
                          DataCell(
                            Text('\$223'),
                          ),
                          DataCell(
                            Text('2'),
                          )
                        ]),
                      ]),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
