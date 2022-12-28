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
      title: 'Tambah Review',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GoLite'),
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
  // bool isChecked = false;

  List<Map> availableHobbies = [
    {"name": "mobilnya keren", "isChecked": false},
    {"name": "ngobrolnya seru", "isChecked": false},
    {
      "name": "bersih",
      "isChecked": false,
    },
    {"name": "nyaman", "isChecked": false},
  ];

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
                  Icon(Icons.bookmark_add_rounded, color: Colors.blue),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Tambah Review', style: TextStyle(color: Colors.blue, fontSize: 16),)
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
                        labelText: 'Star',
                        border: OutlineInputBorder(),
                      ),
                    ),
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
                  ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Comment',
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



