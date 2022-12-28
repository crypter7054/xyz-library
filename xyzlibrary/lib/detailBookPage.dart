import 'package:flutter/material.dart';
import 'package:xyzlibrary/Navigation.dart';

class DetailBookPage extends StatefulWidget {
  const DetailBookPage({super.key});

  @override
  State<DetailBookPage> createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage>{
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    width: width/4.5,
                    child: Column(
                      children: [
                        Container(
                          width: width/4.5,
                          height: height/1.475,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('cover_book.jpg',)
                            )
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Navigation(
                                    page: DrawerSections.updateBook,
                                  )),
                                );
                              },
                              icon: const Icon(Icons.edit_note_outlined),
                              label: const Text("Ubah"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 38),
                                elevation: 0
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: (){},
                              icon: const Icon(Icons.delete_outlined),
                              label: const Text("Hapus"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 38),
                                elevation: 0
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The Walking Dead: Days Gone Bye",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 10,
                          children: const [
                            Text(
                              "Kategori",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "ISBN",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "Penerbit",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "Tahun Terbit",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "Penulis",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "Jumlah Buku",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            Text(
                              "Deskripsi",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                          ],
                        )
                      ),
                      const SizedBox(width: 50),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 10,
                        children: const [
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                            fontSize: 20,
                            )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 10,
                          children: [
                            const Text(
                              "Fiksi",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            const Text(
                              "1582406723",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            const Text(
                              "Image Comics",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            const Text(
                              "2004",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            const Text(
                              "Robert Kirkman",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            const Text(
                              "2000",
                              style: TextStyle(
                              fontSize: 20,
                              )
                            ),
                            SizedBox(
                              width: width/2.5,
                              height: height/2.9,
                              child: const Text(
                                "The world we knew is gone. The world of commerce and frivolous necessity has been replaced by a world of survival and responsibility. An epidemic of apocalyptic proportions has swept the globe, causing the dead to rise and feed on the living. In a matter of months society has crumbled: no government, no grocery stores, no mail delivery, no cable TV.",
                                style: TextStyle(
                                  fontSize: 20,
                                )
                              )
                            ),
                          ],
                        )
                      ),
                    ],
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
