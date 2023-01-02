import 'package:flutter/material.dart';
import 'package:xyzlibrary/Navigation.dart';
import 'package:xyzlibrary/peminjamanapi.dart';
import 'package:xyzlibrary/peminjamanmodel.dart';

class PeminjamanPage extends StatefulWidget {
  const PeminjamanPage({super.key});

  @override
  State<PeminjamanPage> createState() => _PeminjamanPageState();
}

class _PeminjamanPageState extends State<PeminjamanPage> {
  late Future<List> response;

  // Sorting.
  final int _currentSortColumn = 0;
  final bool _isSortAsc = true;

  @override
  void initState()
  {
    response = fetchPeminjaman();
    super.initState();
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
                Row(
                  children: const [
                    Icon(Icons.bookmarks_outlined, color: Colors.blue, size: 50,),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Daftar Peminjaman', style: TextStyle(color: Colors.blue, fontSize: 20),)
                  ],
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Navigation(
                          page: DrawerSections.inputPeminjaman,
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
                        Text('Tambah Peminjaman', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    )
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 30, left: 16, right: 16),
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: FutureBuilder(
              future: response,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return PaginatedDataTable(
                    source: dataSource(snapshot.data),
                    columns: _createColumn(),
                    sortAscending: _isSortAsc,
                    sortColumnIndex: _currentSortColumn,
                    showCheckboxColumn: true
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     CircularProgressIndicator()
                   ],
                 )
                );
              }
            )
          )
        ],)
    );
  }

  DataTableSource dataSource(List<Peminjaman> peminjamanList) =>
      PeminjamanData(dataList: peminjamanList);

  List<DataColumn> _createColumn() {
    return [
      const DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),),
      const DataColumn(label: Text("ISBN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Judul Buku", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Nama Peminjam", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Tanggal Peminjaman", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Tanggal Pengembalian", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("")),
    ];
  }
}

class PeminjamanData extends DataTableSource {
  PeminjamanData({required this.dataList});
  final List<Peminjaman> dataList;

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => dataList.length;
  @override
  int get selectedRowCount => 0;

  @override
  DataRow getRow(int index) {
    return DataRow(
      cells: [
        DataCell(Text((index + 1).toString())),
        DataCell(
          Text(dataList[index].id_buku),
        ),
        DataCell(
          Text(dataList[index].judul),
        ),
        DataCell(
          Text(dataList[index].peminjam),
        ),
        DataCell(
          Text(dataList[index].tanggal_peminjaman),
        ),
        DataCell(
          Text(dataList[index].tanggal_pengembalian),
        ),
        if(dataList[index].status == "1")
          DataCell(Text("Dikembalikan")),
        if(dataList[index].status == "0")
          DataCell(Text("Status")),
        DataCell(IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.blue,
              size: 16,
            ),
            onPressed: () {
            },
          ),
        ),
      ],
    );
  }
}