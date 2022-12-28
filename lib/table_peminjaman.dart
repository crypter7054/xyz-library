import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class TablePeminjaman extends StatefulWidget {
  const TablePeminjaman({super.key});

  @override
  State<TablePeminjaman> createState() => _TablePeminjamanState();
}

class _TablePeminjamanState extends State<TablePeminjaman> {

  // Table.
  final DataTableSource _table = PeminjamanData();

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
                        Icon(Icons.person_pin, color: Colors.blue),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Daftar Peminjaman', style: TextStyle(color: Colors.blue, fontSize: 16),)
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
                        Text('Tambah Peminjaman', style: TextStyle(color: Colors.white, fontSize: 16),)
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
      DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),),
      DataColumn(label: Text("ISBN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Judul Buku", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Nama Peminjam", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Tanggal Peminjaman", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Tanggal Pengembalian", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
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

class PeminjamanData extends DataTableSource {
  final List<Map> _books = [
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'person' : 'Techi',
      'date_borrow' : '14-12-2022',
      'date_return' : '20-12-2022',
      'status' : 'dipinjam',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'person' : 'Techi',
      'date_borrow' : '19-12-2022',
      'date_return' : '26-12-2022',
      'status' : 'dikembalikan',
    },
  ];

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(_books[index]['isbn'])),
      DataCell(Text(_books[index]['title'])),
      DataCell(Text(_books[index]['person'])),
      DataCell(Text(_books[index]['date_borrow'])),
      DataCell(Text(_books[index]['date_return'])),
      DataCell(Text(_books[index]['status'])),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _books.length;

  @override
  int get selectedRowCount => 0;
}