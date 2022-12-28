import 'package:flutter/material.dart';
import 'package:xyzlibrary/aboutPage.dart';
import 'package:xyzlibrary/bookPage.dart';
import 'package:xyzlibrary/detailBookPage.dart';
import 'package:xyzlibrary/inputBookPage.dart';
import 'package:xyzlibrary/inputPeminjamanPage.dart';
import 'package:xyzlibrary/inputMemberPage.dart';
import 'package:xyzlibrary/login.dart';
import 'package:xyzlibrary/peminjamanPage.dart';
import 'package:xyzlibrary/memberPage.dart';
import 'package:xyzlibrary/updateBookPage.dart';

enum DrawerSections{
  dashboard,
  book,
  inputBook,
  updateBook,
  peminjaman,
  inputPeminjaman,
  member,
  inputMember,
  about
}

class Navigation extends StatefulWidget {
  var page;
  Navigation({super.key, this.page});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var currentPage = DrawerSections.dashboard;
  int notInput = 0;

  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSections.dashboard) {
      container = const DetailBookPage();
    }else if (currentPage == DrawerSections.book) {
      container = const BookPage();
    } else if (currentPage == DrawerSections.peminjaman) {
      container = const PeminjamanPage();
    } else if (currentPage == DrawerSections.member) {
      container = const MemberPage();
    } else if (currentPage == DrawerSections.about) {
      container = const AboutPage();
    }

    if (notInput == 0){
      if (widget.page == DrawerSections.inputBook) {
        container = const InputBookPage();
      } else if (widget.page == DrawerSections.inputPeminjaman) {
        container = const InputPeminjamanPage();
      } else if (widget.page == DrawerSections.inputMember) {
        container = const InputMemberPage();
      } else if (widget.page == DrawerSections.updateBook) {
        container = const UpdateBookPage();
      }
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation()),
                    );
                  },
                  icon: Image.asset("logo_white.png")
              )
          )
        ],
      ),
      body: container,
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 160, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                        AssetImage(
                          'profile.png',
                        ),
                      maxRadius: 20,
                    ),
                    Text(
                        "Admin",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                    ),

                  ],
                )
              ),
              const Divider(
                color: Colors.white,
              ),
              MyDrawerList(),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 200, 0, 0),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      icon: const Icon(Icons.logout_outlined),
                      label: const Text("Keluar"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        elevation: 0
                      ),
                    )
                  ],
                )
              )
            ],
          )
        )
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding: const EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          menuItem(0, "Beranda", Icons.home_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(1, "Daftar Buku", Icons.menu_book_outlined,
              currentPage == DrawerSections.book ? true : false),
          menuItem(2, "Daftar Peminjaman", Icons.bookmarks_outlined,
              currentPage == DrawerSections.peminjaman ? true : false),
          menuItem(3, "Daftar Anggota", Icons.group_outlined,
              currentPage == DrawerSections.member ? true : false),
          menuItem(4, "Tentang", Icons.info_outline,
              currentPage == DrawerSections.about ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.blue[400] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id == 0){
              currentPage = DrawerSections.dashboard;
              notInput = 1;
            } else if(id == 1){
              currentPage = DrawerSections.book;
              notInput = 1;
            } else if(id == 2){
              currentPage = DrawerSections.peminjaman;
              notInput = 1;
            } else if(id == 3){
              currentPage = DrawerSections.member;
              notInput = 1;
            } else if(id == 4){
              currentPage = DrawerSections.about;
              notInput = 1;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                    icon,
                    size: 25,
                    color: Colors.white,
                  )
              ),
              Expanded(
                flex: 5,
                  child: Text(
                      title,
                      style: const TextStyle(color: Colors.white,
                      fontSize: 16
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}