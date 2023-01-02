import 'package:flutter/material.dart';
import 'package:xyzlibrary/provider/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final words = provider.words;

    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          margin: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 0),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.bookmark_added_outlined, color: Colors.blue, size: 50,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Daftar Buku Favorit', style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],
              ),
            ]
          )
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 30, left: 16, right: 16),
          margin: const EdgeInsets.only(left: 12, right: 12),
          child: PaginatedDataTable(
            source: dataSource(words, provider),
            columns: _createColumn(),
          )
        )
      ]
    ));
  }

  DataTableSource dataSource(List<String> bookList, FavoriteProvider provider) =>
      BookData(dataList: bookList, provider: provider);

  List<DataColumn> _createColumn() {
    return [
      DataColumn(label: const Text("#", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("Judul Buku Favorit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const DataColumn(label: Text("", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
    ];
  }
}

class BookData extends DataTableSource {
  BookData({required this.dataList, required this.provider});
  final List<String> dataList;
  final FavoriteProvider provider;

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
          Text(dataList[index]),
        ),
        DataCell(
          IconButton(
            onPressed: () {
              provider.toggleFavorite(dataList[index]);
            },
            icon: provider.isExist(dataList[index])
                ? const Icon(Icons.favorite, color: Colors.red)
                : const Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}