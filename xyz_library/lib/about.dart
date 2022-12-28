import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'about',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 60, left: 100, right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text("Tentang Kami", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),

            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Flexible(
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula, neque mollis euismod faucibus, massa mi iaculis erat, eu finibus velit turpis non eros. Phasellus placerat lacus nec mauris lobortis, luctus sodales nisl ullamcorper. Suspendisse euismod pellentesque commodo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam placerat erat faucibus, volutpat elit eu, tincidunt elit. Integer a tristique tellus, sed sollicitudin mi. Fusce viverra nisl in tellus suscipit tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur justo mauris, efficitur ultricies auctor ac, iaculis eget tortor.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Text("The Team", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/default.jpg"),
                      ),
                      Text("M. Satria R.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/default.jpg"),
                      ),
                      Text("Raihan T.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/default.jpg"),
                      ),
                      Text("Satria P.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/default.jpg"),
                      ),
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
