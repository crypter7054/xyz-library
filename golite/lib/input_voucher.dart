import 'package:flutter/material.dart';

enum confirmation { harga_tetap, persen }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Voucher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Input Voucher Page'),
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

  confirmation? pilih_jenis_voucher;

  //text editing controller for text field
  TextEditingController dateinput = TextEditingController();

  // checkbox
  List<Map> availableHobbies = [
    {"name": "Gopay", "isChecked": false},
    {"name": "Cash", "isChecked": false},
    {"name": "Paylater", "isChecked": false},
    {"name": "Bank", "isChecked": false},
  ];

  //
  tetapan(){
    return
      Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Diskon dalam rupiah',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      )
    ;
  }

  persenan(){
    return
      Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Diskon dalam persen',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ListTile(
              title: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Diskon maksimal dalam rupiah',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      )
    ;
  }

  @override
  void initState() {
    setState(() {
      pilih_jenis_voucher = confirmation.harga_tetap;
    });
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: ListView(

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // decoration: BoxDecoration(
              //   border: Border.all()
              // ),
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Row(
                children: const [
                  Icon(Icons.discount, color: Colors.blue),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Tambah Voucher', style: TextStyle(color: Colors.blue, fontSize: 16),)
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
                        labelText: 'Nama Voucher',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: const InputDecoration(
                        labelText: 'Deskripsi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  // RADIO BUTTON
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Jenis Voucher Diskon : "),
                        Radio(
                          value: confirmation.harga_tetap,
                          groupValue: pilih_jenis_voucher,
                          onChanged: (confirmation? value) {
                            setState(() {
                              pilih_jenis_voucher = value;
                            });
                          },
                        ),
                        Text('Harga Tetap'),
                        Radio(
                          value: confirmation.persen,
                          groupValue: pilih_jenis_voucher,
                          onChanged: (confirmation? value) {
                            setState(() {
                              pilih_jenis_voucher = value;
                            });
                          },
                        ),
                        Text('Persen'),
                      ],
                    ),
                  ),

                  // TERM&COND DIPENGARUHI RADIO BUTTON
                  if(pilih_jenis_voucher == confirmation.harga_tetap)
                    tetapan(),
                  if(pilih_jenis_voucher == confirmation.persen)
                    persenan(),

                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Minimal Transaksi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  //CHECKBOX
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text("Pembayaran"),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Column(
                          children: availableHobbies.map((hobby){
                            return CheckboxListTile(
                                value: hobby["isChecked"],
                                title: Text(
                                  hobby["name"],
                                  style: const TextStyle(
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                                onChanged: (newValue){
                                  setState(() {
                                    hobby["isChecked"] = newValue;
                                  });
                                });
                          }).toList(),
                        ),
                        Wrap(
                          children: availableHobbies.map((hobby) {
                            if (hobby["isChecked"] == true){
                              return Card(
                                elevation: 1,
                                color: Colors.blue,
                                margin: const EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    hobby["name"],
                                    style: const TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              );
                            }
                            return Container();
                          }).toList(),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  ),
                  ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: const InputDecoration(
                        labelText: 'Petunjuk Penggunaan',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  // DATE FIELD
                  ListTile(
                    title: TextField(
                      controller: dateinput, //editing controller of this TextField
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Tanggal Kedaluwarsa (hari/bulan/tahun)", //label text of field
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
                            dateinput.text = '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}'; //set output date to TextField value.
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
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
