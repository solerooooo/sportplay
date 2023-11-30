// login.dart
import 'package:flutter/material.dart';
import 'home.dart';
import '../models/user.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Login to SportPlay',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    User passUser = User(
                      name: nameController.text,
                      email: emailController.text,
                      password: '',
                      phone: '',
                      address: '',
                      gender: '',
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home(passUser: passUser)),
                    );
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
