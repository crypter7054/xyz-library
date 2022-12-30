import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'Navigation.dart';

enum OptionItem { ubah, hapus }

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {

  OptionItem? selectedOption;

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
            margin: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                      children: const [
                        Icon(Icons.group_outlined, color: Colors.blue, size: 50,),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Daftar Anggota', style: TextStyle(color: Colors.blue, fontSize: 20),)
                      ],
                    )
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Navigation(
                          page: DrawerSections.inputMember,
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
                        Text('Tambah Anggota', style: TextStyle(color: Colors.white, fontSize: 16),)
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
      const DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("NIK", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Nama Lengkap", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Jenis Kelamin", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Alamat", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Nomor Telepon", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
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
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
    },
    {
      'id' : '3212150909090002',
      'name' : 'Techi',
      'gender' : 'Laki-laki',
      'address' : 'Jl. Setiabudhi No. 132',
      'phone' : '081234567890',
      'email' : 'techi@gmail.com',
    },
    {
      'id' : '3212150909090003',
      'name' : 'Techa',
      'gender' : 'Perempuan',
      'address' : 'Jl. Setiabudhi No. 133',
      'phone' : '081234567891',
      'email' : 'techa@gmail.com',
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
      DataCell(
        PopupMenuButton<OptionItem>(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))
          ),
          itemBuilder: (BuildContext context) {
            return [
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