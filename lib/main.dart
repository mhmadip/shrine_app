import 'package:flutter/material.dart';
import 'package:shrine_app/second_screen.dart';

void main() {
  runApp(
    const MaterialApp(home: LoginPage()),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TODO: Add text editing controllers
  final _userControl = TextEditingController();
  final _passControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(
              height: 120.0,
            ),
            Column(
              children: [
                Icon(
                  Icons.diamond_outlined,
                  color: Colors.brown[800],
                  size: 40,
                ),
                const SizedBox(height: 15.0),
                const Text('SHRINE')
              ],
            ),
            const SizedBox(
              height: 120.0,
            ),
            //[Name]
            TextField(
              controller: _userControl,
              decoration:
                  const InputDecoration(filled: true, labelText: 'Username'),
            ),
            // spacer
            const SizedBox(
              height: 15.0,
            ),
            //[Password]
            TextField(
              controller: _passControl,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
              obscuringCharacter: '#',
            ),

            ButtonBar(
              children: [
                //Cancel button
                TextButton(
                    onPressed: () {
                      //clear the text fields
                      _userControl.clear();
                      _passControl.clear();
                    },
                    child: const Text('CANCEL')),
                //Login Button
                ElevatedButton(
                    onPressed: () {
                      //show the next page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SecondScreen(),
                        ),
                      );
                    },
                    child: const Text('LOGIN'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
