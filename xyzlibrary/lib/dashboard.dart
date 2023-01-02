import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("XYZ Library Dashboard", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          Text("Selamat Datang di XYZ Library", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
