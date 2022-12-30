import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class InputPeminjamanPage extends StatefulWidget {
  const InputPeminjamanPage({super.key});

  @override
  State<InputPeminjamanPage> createState() => _InputPeminjamanPageState();
}

class _InputPeminjamanPageState extends State<InputPeminjamanPage> {

  // text editing controller untuk input tanggal
  TextEditingController tanggalpeminjaman = TextEditingController();
  TextEditingController tanggalpengembalian = TextEditingController();

  String? _selectedISBN;
  String? _selectedJudul;
  String? _selectedNIK;
  String? _selectedNama;

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
                border: Border.all(color: Colors.black38,),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.only(top: 30, bottom: 30, left: 32, right: 32),
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    title: SearchField(
                      hint: "ISBN",
                      searchInputDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      itemHeight: 50,
                      maxSuggestionsInViewPort: 6,
                      suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          )
                        ]
                      ),
                      onTap: (value) {
                        setState(() {
                          _selectedISBN = value;
                        });
                      },
                      suggestions:  const [
                        '978-602-8755-00-9',
                        '978-602-8755-01-6',
                        '978-602-8755-02-3',
                        '978-602-8519-93-4',
                        '978-602-8519-94-2',
                      ],
                    )
                  ),
                  ListTile(
                    title: SearchField(
                      hint: "Judul Buku",
                      searchInputDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      itemHeight: 50,
                      maxSuggestionsInViewPort: 6,
                      suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          )
                        ]
                      ),
                      onTap: (value) {
                        setState(() {
                          _selectedJudul = value;
                        });
                      },
                      suggestions:  const [
                        'Sejarah Karawitan II',
                        'Bahasa Indonesia I',
                        'Antropologi Seni',
                        'Komputer Grafis I',
                        'Animasi I',
                      ],
                    )
                  ),
                  ListTile(
                    title: SearchField(
                      hint: "NIK Peminjam",
                      searchInputDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      itemHeight: 50,
                      maxSuggestionsInViewPort: 6,
                      suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          )
                        ]
                      ),
                      onTap: (value) {
                        setState(() {
                          _selectedNIK = value;
                        });
                      },
                      suggestions:  const [
                        '3252140102050009',
                        '33522402050100010',
                        '3292150708110011',
                        '3202090105990012',
                        '3092900101010001',
                      ],
                    )
                  ),
                  ListTile(
                    title: SearchField(
                      hint: "Nama Peminjam",
                      searchInputDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      itemHeight: 50,
                      maxSuggestionsInViewPort: 6,
                      suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          )
                        ]
                      ),
                      onTap: (value) {
                        setState(() {
                          _selectedNama = value;
                        });
                      },
                      suggestions:  const [
                        'Tono',
                        'Budi',
                        'Susanti',
                        'Wati',
                        'Wawan',
                      ],
                    )
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
                        labelText: "Tanggal Pengembalian (hari/bulan/tahun)", //label text of field
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