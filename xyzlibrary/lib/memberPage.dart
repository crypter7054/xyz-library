import 'package:flutter/material.dart';
import 'Navigation.dart';
import 'package:xyzlibrary/memberapi.dart';
import 'package:xyzlibrary/membermodel.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  late Future<List> response;

  // Sorting.
  final int _currentSortColumn = 0;
  final bool _isSortAsc = true;

  @override
  void initState()
  {
    response = fetchMembers();
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
                    Icon(Icons.group_outlined, color: Colors.blue, size: 50,),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Daftar Anggota', style: TextStyle(color: Colors.blue, fontSize: 20),)
                  ],
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

  DataTableSource dataSource(List<Members> memberList) =>
      MemberData(dataList: memberList);

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
}

class MemberData extends DataTableSource {
  MemberData({required this.dataList});
  final List<Members> dataList;

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
          Text(dataList[index].id),
        ),
        DataCell(
          Text(dataList[index].nama_lengkap),
        ),
        DataCell(
          Text(dataList[index].jenis_kelamin),
        ),
        DataCell(
          Text(dataList[index].alamat),
        ),
        DataCell(
          Text(dataList[index].no_telp),
        ),
        DataCell(
          Text(dataList[index].email),
        ),
        const DataCell(PopupMenu()),
      ],
    );
  }
}

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  var selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) {
        setState(() {
        });
      },
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0))
      ),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: "deleteMember",
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
    );
  }
}