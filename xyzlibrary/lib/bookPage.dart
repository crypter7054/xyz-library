import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:xyzlibrary/Navigation.dart';

enum OptionItem { detail, ubah, hapus }

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  OptionItem? selectedOption;

  final List<Map> _books = [
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
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
          margin: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: const [
                    Icon(Icons.menu_book_outlined, color: Colors.blue, size: 50,),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Daftar Buku', style: TextStyle(color: Colors.blue, fontSize: 20),)
                  ],
                )
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation(
                        page: DrawerSections.inputBook,
                      )),
                    );
                  }, // Fill here for navigation.
                  style: TextButton.styleFrom(backgroundColor: Colors.blue, padding: const EdgeInsets.all(16)),
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
          padding: const EdgeInsets.only(top: 10, bottom: 30, left: 16, right: 16),
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
      DataColumn(label: const Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), onSort: _onSort),
      const DataColumn(label: Text("ISBN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Judul", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Kategori", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Penerbit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Penulis", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Tahun Terbit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Jumlah Buku", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
    ];
  }

  List<DataRow> _createRows() {
    int idx = 1;
    return _books.mapIndexed((index, book) => DataRow(cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(book['isbn'])),
      DataCell(Text(book['title'])),
      DataCell(Text(book['category'])),
      DataCell(Text(book['publisher'])),
      DataCell(Text(book['author'])),
      DataCell(Text(book['year'])),
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
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
    {
      'isbn' : '333-444-5555-66-1',
      'title' : 'Pemrograman Dasar',
      'category' : 'Pemrograman',
      'publisher' : 'Gramedia',
      'author' : 'Techi',
      'year' : '2011',
      'total' : '112',
    },
  ];

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(_books[index]['isbn'])),
      DataCell(Text(_books[index]['title'])),
      DataCell(Text(_books[index]['category'])),
      DataCell(Text(_books[index]['publisher'])),
      DataCell(Text(_books[index]['author'])),
      DataCell(Text(_books[index]['year'])),
      DataCell(Text(_books[index]['total'])),
      DataCell(
        PopupMenuButton<OptionItem>(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))
          ),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem <OptionItem> (
                value: OptionItem.detail,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.info_outlined, color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text('Detail', style: TextStyle(color: Colors.blue)),
                  ]
                ),
              ),
              PopupMenuItem <OptionItem> (
                value: OptionItem.ubah,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.edit_note_outlined, color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text('Ubah', style: TextStyle(color: Colors.blue)),
                  ]
                ),
              ),
              PopupMenuItem <OptionItem> (
                value: OptionItem.hapus,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.delete_outlined, color: Colors.red,),
                    SizedBox(width: 5,),
                    Text('Hapus', style: TextStyle(color: Colors.red)),
                  ]
                ),
              ),
            ];
          }
        )
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _books.length;

  @override
  int get selectedRowCount => 0;
}