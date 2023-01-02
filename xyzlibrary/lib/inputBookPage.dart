import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class InputBookPage extends StatefulWidget {
  const InputBookPage({super.key});

  @override
  State<InputBookPage> createState() => _InputBookPageState();
}

class _InputBookPageState extends State<InputBookPage> {

  String kategori_selected = "";

  @override
  Widget build(BuildContext context) {

    // DROPDOWN ITEM LIST
    List<DropdownMenuItem<String>> kategori = [];
    var itm1 = DropdownMenuItem<String>(
      value: "",
      child: Text("Pilih Kategori", style: TextStyle(color: Colors.grey.shade600),),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "Fiksi",
      child: Text("Fiksi"),
    );
    var itm3 = const DropdownMenuItem<String>(
      value: "Sejarah",
      child: Text("Sejarah"),
    );
    kategori.add(itm1);
    kategori.add(itm2);
    kategori.add(itm3);

    //FUNGSI INSERT DATA KE SERVER
    TextEditingController isbn=new TextEditingController();
    TextEditingController judul=new TextEditingController();
    TextEditingController penerbit=new TextEditingController();
    TextEditingController penulis=new TextEditingController();
    TextEditingController tahun_terbit=new TextEditingController();
    TextEditingController jumlah_buku=new TextEditingController();
    TextEditingController deskripsi=new TextEditingController();

    Future<List> senddata() async {
      final response = await http.post(Uri.parse("https://xyzlibrary.desainweb4c2.com/insert_buku.php"), body: {
        "isbn": isbn.text,
        "judul": judul.text,
        "kategori": kategori_selected,
        "penerbit": penerbit.text,
        "penulis": penulis.text,
        "tahun_terbit": tahun_terbit.text,
        "jumlah_buku": jumlah_buku.text,
        "deskripsi": deskripsi.text,
      });

      // the server response
      if (response.statusCode == 201) {
        return (json.decode(response.body));
      } else {
        throw Exception('failed!');
      }
    }

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              Container(
                // decoration: BoxDecoration(
                //   border: Border.all()
                // ),
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                child: Row(
                  children: const [
                    Icon(Icons.library_books_outlined, color: Colors.blue, size: 50,),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Tambah Buku', style: TextStyle(color: Colors.blue, fontSize: 20),)
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38,),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.only(top: 30, bottom: 30, left: 32, right: 32),
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: TextFormField(
                        controller: isbn,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp('[a-zA-Z]')),
                        ],
                        decoration: const InputDecoration(
                          labelText: 'ISBN',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: judul,
                        decoration: const InputDecoration(
                          labelText: 'Judul',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: DropdownButtonFormField(
                        decoration: const InputDecoration(
                          labelText: 'Kategori',
                          border: OutlineInputBorder(),
                        ),
                        value: kategori_selected,
                        items: kategori,
                        onChanged: (String? newValue) {

                            if (newValue != null) {
                              kategori_selected = newValue;
                            }

                        },
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: penerbit,
                        decoration: const InputDecoration(
                          labelText: 'Penerbit',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: penulis,
                        decoration: const InputDecoration(
                          labelText: 'Penulis',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: tahun_terbit,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Tahun Terbit',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: jumlah_buku,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Jumlah Buku',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: deskripsi,
                        maxLines: null,
                        decoration: const InputDecoration(
                          labelText: 'Deskripsi',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(12)
                      ),
                        // padding: const EdgeInsets.all(18),
                        margin: const EdgeInsets.only(top: 14, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.all(18),
                                  side: const BorderSide(
                                      color: Colors.blue
                                  )
                              ),
                              onPressed: (){
                                setState(() {
                                });
                              },
                              child: const Text('Batal'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.all(18),
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  )
                              ),
                              onPressed: (){
                                senddata();
                                setState(() {
                                });
                              },
                              child: const Text('Simpan'),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          )
        )
      )
    );
  }
}

