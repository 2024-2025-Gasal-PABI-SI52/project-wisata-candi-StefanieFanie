import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:wisata_candi/screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // TODO: 1. Deklarasikan variabel
  final TextEditingController _fullnameController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignUp = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      // TODO: 3. Pasang Body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                // TODO: 4. Aturn mainAxisAlignment dan crossAxisAlignment
                children: [
                  // TODO: 5. Buat TextFormField untuk Nama (Nama Lengkap)
                  TextFormField(
                    controller: _fullnameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukkan nama lengkap',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  // TODO: 6. Buat TextFormField untuk Nama Pengguna
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Pengguna',
                      hintText: 'Masukkan nama pengguna',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  // TODO: 7. Buat TextFormField untuk kata Sandi
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi',
                      hintText: 'Masukkan kata sandi',
                      border: const OutlineInputBorder(),
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  // TODO: 8. Buat ElevatedButton untuk Sign Up
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Sign Up'),
                  ),
                  // TODO: 9. Pasang TextButton untuk Sign In
                  const SizedBox(height: 10,),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text('Belum punya akun? Daftar di sini.'),
                  // ),
                  RichText(
                    text: TextSpan(
                      text: 'Sudah punya akun? ',
                      style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                      children: [
                        TextSpan(
                          text: 'Login di sini.',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SignInScreen();
                            }));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}