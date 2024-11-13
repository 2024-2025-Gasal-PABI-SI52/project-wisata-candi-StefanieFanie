import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  // TODO: 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      // TODO: 3. Pasang Body
      body: Center(
        child: Form(
          child: Column(
            // TODO: 4. Aturn mainAxisAlignment dan crossAxisAlignment
            children: [
              // TODO: 5. Buat TextFormField untuk Nama Pengguna
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Pengguna',
                  hintText: 'Masukkan nama pengguna',
                  border: OutlineInputBorder(),
                ),
              ),
              // TODO: 6. Buat TextFormField untuk kata Sandi
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  hintText: 'Masukkan kata sandi',
                  border: const OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                ),
              ),
              // TODO: 7. Buat ElevatedButton untuk Sign In
            ],
          ),
        ),
      ),
    );
  }
}