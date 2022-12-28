import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class TableBook extends StatefulWidget {
  const TableBook({super.key});

  @override
  State<TableBook> createState() => _TableBookState();
}

class _TableBookState extends State<TableBook> {

  final List<Map> _books = [
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    }
  ];

  // Table.
  final DataTableSource _table = BookData();

  // Sorting.
  int _currentSortColumn = 0;
  bool _isSortAsc = true;

  // Select choice.
  List<bool> _selected = [];

  @override
  void initState()
  {
    super.initState();
    _selected = List<bool>.generate(_books.length, (index) => false);
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
                    Icon(Icons.menu_book, color: Colors.blue),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Daftar Buku', style: TextStyle(color: Colors.blue, fontSize: 16),)
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
                      Text('Tambah Buku', style: TextStyle(color: Colors.white, fontSize: 16),)
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
      DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), onSort: _onSort),
      DataColumn(label: Text("Judul", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Kategori", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("ISBN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Penerbit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Tahun Terbit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Penulis", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("Jumlah Buku", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      DataColumn(label: Text("", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
    ];
  }

  List<DataRow> _createRows() {
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
  }

  void _onSort(int column, bool ascending) {
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
  }
}

class BookData extends DataTableSource {
  final List<Map> _books = [
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    },
    {
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'isbn' : '333-444-5555-66-1',
      'publisher' : 'Gramedia',
      'year' : '2011',
      'author' : 'Techi',
      'total' : '112',
    }
  ];

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(_books[index]['title'])),
      DataCell(Text(_books[index]['category'])),
      DataCell(Text(_books[index]['isbn'])),
      DataCell(Text(_books[index]['publisher'])),
      DataCell(Text(_books[index]['year'])),
      DataCell(Text(_books[index]['author'])),
      DataCell(Text(_books[index]['total'])),
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