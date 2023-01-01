import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Dashboard", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          Text("Coming Soon", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
