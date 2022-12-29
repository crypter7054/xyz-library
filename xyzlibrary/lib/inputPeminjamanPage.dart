import 'package:flutter/material.dart';

class InputPeminjamanPage extends StatefulWidget {
  const InputPeminjamanPage({super.key});

  @override
  State<InputPeminjamanPage> createState() => _InputPeminjamanPageState();
}

class _InputPeminjamanPageState extends State<InputPeminjamanPage> {

  // text editing controller untuk input tanggal
  TextEditingController tanggalpeminjaman = TextEditingController();
  TextEditingController tanggalpengembalian = TextEditingController();

  // state awal
  @override
  void initState() {
    tanggalpeminjaman.text = ""; //set the initial value of text field
    tanggalpengembalian.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   border: Border.all()
              // ),
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Row(
                children: const [
                  Icon(Icons.bookmark_add_outlined, color: Colors.blue, size: 50,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Input Peminjaman', style: TextStyle(color: Colors.blue, fontSize: 20),)
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
                        labelText: 'Nomor Panggil',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Judul Buku',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'NIK Peminjam',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nama Peminjam',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  // DATE FIELD
                  ListTile(
                    title: TextField(
                      controller: tanggalpeminjaman, //editing controller of this TextField
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Tanggal Peminjaman (hari/bulan/tahun)", //label text of field
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,  //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100)
                        );

                        if(pickedDate != null ){
                          setState(() {
                            tanggalpeminjaman.text = '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}'; //set output date to TextField value.
                          });
                        }
                      },
                    ),
                  ),

                  ListTile(
                    title: TextField(
                      controller: tanggalpengembalian, //editing controller of this TextField
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Tanggal Peminjaman (hari/bulan/tahun)", //label text of field
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,  //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100)
                        );

                        if(pickedDate != null ){
                          setState(() {
                            tanggalpengembalian.text = '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}'; //set output date to TextField value.
                          });
                        }
                      },
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