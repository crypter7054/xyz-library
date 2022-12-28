import 'package:flutter/material.dart';
import 'package:xyzlibrary/Navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _obscurePass;

  @override
  void initState() {
    super.initState();
    _obscurePass = true;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('logo.png', fit: BoxFit.contain, height: 128),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(300, 20, 300, 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    ListTile(
                      title: TextFormField(
                        obscureText: _obscurePass,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: _obscurePass ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _obscurePass = !_obscurePass;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 3, 17, 0),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Navigation()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(50),
                          elevation: 0
                        ),
                        child: const Text("Login"),
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
