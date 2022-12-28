// ubah buku
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubah Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Layouting'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: const Text(
        //   'Input Buku',
        // ),
        backgroundColor: Colors.blue,

      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('XYZ Library'),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Beranda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
              ),
              title: const Text('Buku'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book_online,
              ),
              title: const Text('Peminjaman'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.people,
              ),
              title: const Text('Member'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.build,
              ),
              title: const Text('Tentang Kami'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body:
      Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   border: Border.all()
            // ),
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            child: Row(
              children: const [
                Icon(Icons.edit_note, color: Colors.blue),
                SizedBox(
                  width: 12,
                ),
                Text('Ubah Buku', style: TextStyle(color: Colors.blue, fontSize: 16),)
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.only(top: 40, bottom: 40, left: 32, right: 32),
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

    );
  }
}