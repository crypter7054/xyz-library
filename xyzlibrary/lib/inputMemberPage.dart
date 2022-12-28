// Input Member
import 'package:flutter/material.dart';

class InputMemberPage extends StatefulWidget {
  const InputMemberPage({super.key});

  @override
  State<InputMemberPage> createState() => _InputMemberPageState();
}

class _InputMemberPageState extends State<InputMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Row(
                children: const [
                  Icon(Icons.group_add_outlined, color: Colors.blue, size: 50,),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Tambah Anggota', style: TextStyle(color: Colors.blue, fontSize: 20),)
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
                        labelText: 'KTP / NIK',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nama Lengkap',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nomor Telepon',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Jenis Kelamin',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Alamat',
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
