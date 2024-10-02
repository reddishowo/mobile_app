import 'package:app/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/screens/auth/sign_in_screen.dart'; // import halaman login

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome, you are In !'),
        actions: [
          IconButton(
            onPressed: () {
              // Menambahkan event SignOutRequired untuk logout
              context.read<SignInBloc>().add(const SignOutRequired());

              // Kembali ke halaman login setelah logout
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(), // Halaman login
                ),
              );
            },
            icon: const Icon(Icons.login),
          )
        ],
      ),
    );
  }
}
