import 'package:flutter/material.dart';

class InputBookPage extends StatefulWidget {
  const InputBookPage({super.key});

  @override
  State<InputBookPage> createState() => _InputBookPageState();
}

class _InputBookPageState extends State<InputBookPage> {
  @override
  Widget build(BuildContext context) {
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
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Kategori',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
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

