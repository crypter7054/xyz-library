import 'package:flutter/material.dart';
import 'package:xyzlibrary/Navigation.dart';
import 'package:xyzlibrary/bookapi.dart';
import 'package:xyzlibrary/bookmodel.dart';
import 'package:xyzlibrary/provider/favorite_provider.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  late Future<List> response;

  // Sorting.
  final int _currentSortColumn = 0;
  final bool _isSortAsc = true;

  @override
  void initState() {
    response = fetchBooks();
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
                  Icon(Icons.menu_book_outlined, color: Colors.blue, size: 50,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Daftar Buku', style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Navigation(
                            page: DrawerSections.favorite,
                          )),
                        );
                      }, // Fill here for navigation.
                      style: TextButton.styleFrom(backgroundColor: Colors.blue, padding: const EdgeInsets.all(16)),
                      child: Row(
                        children: const [
                          Icon(Icons.favorite_border, color: Colors.white, size: 16,),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Favorit', style: TextStyle(color: Colors.white, fontSize: 16),)
                        ],
                      )
                  ),
                  const SizedBox(
                    width: 5,
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
  DataTableSource dataSource(List<Books> bookList) =>
      BookData(dataList: bookList);

  List<DataColumn> _createColumn() {
    return [
      const DataColumn(label: Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
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
}

class BookData extends DataTableSource {
  BookData({required this.dataList});
  final List<Books> dataList;
  
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
        DataCell(IconProvider(word: dataList[index].judul)),
        DataCell(
          Text(dataList[index].isbn),
        ),
        DataCell(
          Text(dataList[index].judul),
        ),
        DataCell(
          Text(dataList[index].kategori),
        ),
        DataCell(
          Text(dataList[index].penerbit),
        ),
        DataCell(
          Text(dataList[index].penulis),
        ),
        DataCell(
          Text(dataList[index].tahun_terbit),
        ),
        DataCell(
          Text(dataList[index].jumlah_buku),
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
          selectedOption = value.toString();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Navigation(
              page: value.toString(),
            )),
          );
        });
      },
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0))
      ),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: "detailBuku",
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
          PopupMenuItem(
            value: "updateBuku",
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
          PopupMenuItem(
            value: "deleteBuku",
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

class IconProvider extends StatelessWidget {
  String word;
  IconProvider({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return IconButton(
      onPressed: () {
        provider.toggleFavorite(word);
      },
      icon: provider.isExist(word)
          ? const Icon(Icons.favorite, color: Colors.red)
          : const Icon(Icons.favorite_border),
    );
  }
}