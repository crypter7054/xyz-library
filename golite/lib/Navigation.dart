import 'package:flutter/material.dart';

import 'homePage.dart';
import 'inputReviewPage.dart';
import 'inputVoucherPage.dart';

enum DrawerSections{
  home,
  review,
  inputReview,
  voucher,
  inputVoucher,
  updateVoucher,
}

class Navigation extends StatefulWidget {
  var page;
  Navigation({super.key, this.page});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var currentPage = DrawerSections.home;
  int notInput = 0;

  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSections.home) {
      container = const HomePage();
    }else if (currentPage == DrawerSections.review) {
      container = const InputReviewPage();
    } else if (currentPage == DrawerSections.voucher) {
      container = const InputVoucherPage();
    }

    if (notInput == 0){
      if (widget.page == DrawerSections.inputReview) {
        // container = const InputReviewPage();
      } else if (widget.page == DrawerSections.inputVoucher) {
        // container = const InputVoucherPage();
      } else if (widget.page == DrawerSections.updateVoucher) {
        // container = const UpdateVoucherPage();
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
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
                  icon: Image.asset("logo_white_icon.png")
              )
          )
        ],
      ),
      body: container,
      drawer: Drawer(
        backgroundColor: Colors.green[700],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 160, 20),
                child: Image.asset('logo_white.png')
              ),
              MyDrawerList(),
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
          menuItem(0, "Home", Icons.home_outlined,
              currentPage == DrawerSections.home ? true : false),
          menuItem(1, "Review List", Icons.rate_review_outlined,
              currentPage == DrawerSections.review ? true : false),
          menuItem(2, "Voucher List", Icons.discount_outlined,
              currentPage == DrawerSections.voucher ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.green[600] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id == 0){
              currentPage = DrawerSections.home;
              notInput = 1;
            } else if(id == 1){
              currentPage = DrawerSections.review;
              notInput = 1;
            } else if(id == 2){
              currentPage = DrawerSections.voucher;
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