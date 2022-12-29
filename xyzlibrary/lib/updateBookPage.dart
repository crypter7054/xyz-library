import 'package:flutter/material.dart';

class UpdateBookPage extends StatefulWidget {
  const UpdateBookPage({super.key});

  @override
  State<UpdateBookPage> createState() => _UpdateBookPageState();
}

class _UpdateBookPageState extends State<UpdateBookPage> {

  String kategori_selected = "Fiksi";

  @override
  Widget build(BuildContext context) {

    // DROPDOWN ITEM LIST
    List<DropdownMenuItem<String>> kategori = [];
    var itm1 = const DropdownMenuItem<String>(
      value: "Fiksi",
      child: Text("Fiksi"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "Sejarah",
      child: Text("Sejarah"),
    );
    kategori.add(itm1);
    kategori.add(itm2);

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                child: Row(
                  children: const [
                    Icon(Icons.edit_note_outlined, color: Colors.blue, size: 50,),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Ubah Buku', style: TextStyle(color: Colors.blue, fontSize: 20),)
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.only(top: 30, bottom: 30, left: 32, right: 32),
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Judul',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'ISBN',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Tahun Terbit',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Jumlah Buku',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Penulis',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Penerbit',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    // DROPDOWN
                    ListTile(
                      title: DropdownButtonFormField(
                        decoration: const InputDecoration(
                          labelText: 'Kategori',
                          border: OutlineInputBorder(),
                        ),
                        value: kategori_selected,
                        items: kategori,
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue != null) {
                              kategori_selected = newValue;
                            }
                          });
                        },
                      ),
                    ),

                    ListTile(
                      title: TextFormField(
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
                                setState(() {
                                });
                              },
                              child: const Text('Submit'),
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