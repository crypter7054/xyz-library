import 'package:flutter/material.dart';
import 'package:xyzlibrary/customPaint.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        // decoration: BoxDecoration(
        //   border: Border.all()
        // ),
        margin: const EdgeInsets.only(top: 60, left: 100, right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 15),
              child: const LogoView(),
            ),

            const Text("Tentang Kami", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),

            Container(
              margin: const EdgeInsets.only(top: 30, left: 50, right: 50),
              child: const Flexible(
                child: Text("XYZ library adalah aplikasi mobile admin-side(sisi-admin) yang dikembangkan untuk memudahkan perpustakaan, lembaga atau organisasi sejenis yang menyediakan fasilitas peminjaman buku untuk dapat melakukan pendataan peminjaman dengan baik. Aplikasi ini menawarkan beberapa fitur yang memungkinkan pengguna(admin) untuk melakukan pendataan meliputi create data, read data, update data, dan delete data. Pertama terdapat fitur pendataan buku yang memungkinkan pengguna membaca data buku, menambahkan data buku baru, dan mengubah data buku yang sudah ada. Kemudian, terdapat fitur kedua yaitu peminjaman yang memungkinkan pengguna untuk menambahkan data peminjaman buku. Terakhir, terdapat fitur pendataan member yang berfungsi untuk mendata anggota yang melakukan peminjaman buku, pengguna dapat menambahkan data anggota baru, serta mengubah dan menghapus data anggota yang sudah ada.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Text("The Team", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(140, 30, 140, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("profile.png"),
                      ),
                      SizedBox(height: 5,),
                      Text("M. Satria R.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("profile.png"),
                      ),
                      SizedBox(height: 5,),
                      Text("Raihan T.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("profile.png"),
                      ),
                      SizedBox(height: 5,),
                      Text("Satria P.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("profile.png"),
                      ),
                      SizedBox(height: 5,),
                      Text("Yosafat", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),

      ),

    );
  }
}
