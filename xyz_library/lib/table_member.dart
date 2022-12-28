import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class TableMember extends StatefulWidget {
  const TableMember({super.key});

  @override
  State<TableMember> createState() => _TableMemberState();
}

class _TableMemberState extends State<TableMember> {

  // Table.
  final DataTableSource _table = MemberData();

  // Sorting.
  int _currentSortColumn = 0;
  bool _isSortAsc = true;

  // Select choice.
  List<bool> _selected = [];

  @override
  void initState()
  {
    super.initState();
    // _selected = List<bool>.generate(_books.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin: const EdgeInsets.only(left: 40, right: 40, top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                      children: const [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Daftar Member', style: TextStyle(color: Colors.blue, fontSize: 16),)
                      ],
                    )
                ),
                TextButton(
                    onPressed: () {}, // Fill here for navigation.
                    style: TextButton.styleFrom(backgroundColor: Colors.blue, padding: EdgeInsets.all(16)),
                    child: Row(
                      children: const [
                        Icon(Icons.add, color: Colors.white, size: 16,),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Tambah Member', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    )
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
              margin: const EdgeInsets.only(left: 12, right: 12),
              child: PaginatedDataTable(
                  columns: _createColumn(),
                  source: _table,
                  sortAscending: _isSortAsc,
                  sortColumnIndex: _currentSortColumn,
                  showCheckboxColumn: true)
          )
        ],)
    );
  }

  List<DataColumn> _createColumn() {
    return [
      DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("KTP / NIK", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Nama Lengkap", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("JK", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Alamat", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Nomor Telepon", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
    ];
  }

  /* List<DataRow> _createRows() {
    int idx = 1;
    return _books.mapIndexed((index, book) => DataRow(cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(book['title'])),
      DataCell(Text(book['category'])),
      DataCell(Text(book['isbn'])),
      DataCell(Text(book['publisher'])),
      DataCell(Text(book['year'])),
      DataCell(Text(book['author'])),
      DataCell(Text(book['total'])),
    ],
        selected: _selected[index],
        onSelectChanged: (bool? selected) {
          setState(() {
            _selected[index] = selected!;
          });
        })).toList();
  } */

  /* void _onSort(int column, bool ascending) {
    setState(() {
      _currentSortColumn = column;
      if(_isSortAsc) {
        _books.sort((a, b) => b['id'].compareTo(a['id']));
      }
      else {
        _books.sort((a, b) => a['id'].compareTo(b['id']));
      }

      _isSortAsc = !_isSortAsc;
    });
  } */
}

class MemberData extends DataTableSource {
  final List<Map> _books = [
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'L',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '++6281234567890',
      'email' : 'techi@gmail.com',
    },
  ];

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(_books[index]['id'])),
      DataCell(Text(_books[index]['name'])),
      DataCell(Text(_books[index]['gender'])),
      DataCell(Text(_books[index]['address'])),
      DataCell(Text(_books[index]['phone'])),
      DataCell(Text(_books[index]['email'])),
      DataCell(IconButton(
        icon: Icon(Icons.more_vert, color: Colors.black,),
        onPressed: () {},
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _books.length;

  @override
  int get selectedRowCount => 0;
}