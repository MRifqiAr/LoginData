import 'package:flutter/material.dart';
import 'halaman_produk.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login Text
            Text('Halo Selamat Datang!'),

            // Username TextField
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Password TextField
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => halamanProduk(),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
