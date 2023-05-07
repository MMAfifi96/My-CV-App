import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(
          label: Text(
            'Info.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        DataColumn(
          label: Text('Details.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
        )
      ],
      rows: [
        const DataRow(
          cells: [
            DataCell(Text(
              'Name',
              style: TextStyle(
                fontSize: 22,
              ),
            )),
            DataCell(Text(
              'Moustafa Mohamed Afifi',
              style: TextStyle(fontSize: 18),
            )),
          ],
        ),
        const DataRow(
          cells: [
            DataCell(Text(
              'Date Of Birth',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
            DataCell(Text(
              '16-May-1996.',
              style: TextStyle(fontSize: 20),
            )),
          ],
        ),
        DataRow(
          cells: [
            const DataCell(
              Text(
                'Nationality',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            DataCell(
              Row(
                children: [
                  const Text(
                    'Egyptian',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQca1F5gOxWmC6a0JsGMQ1piXcm0ZgnVOa6kshR8WfW&s',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
        const DataRow(
          cells: [
            DataCell(
              Text(
                'Role',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            DataCell(
              Text(
                'Mobile Software Engineer',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
