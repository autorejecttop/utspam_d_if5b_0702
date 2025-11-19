import 'package:flutter/material.dart';
import 'package:uts/main/main_screen.dart';
import 'package:uts/auth/register_screen.dart';
import 'package:uts/user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordObscure = true;

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      final username = _usernameController.text;
      final password = _passwordController.text;

      final userData = await UserModel().login(username, password);
      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(userData: userData),
          ),
          (route) => false,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _usernameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username Anda',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username tidak boleh kosong!';
                  }

                  return null;
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                obscureText: _isPasswordObscure,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password Anda',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordObscure = !_isPasswordObscure;
                      });
                    },
                    icon: Icon(
                      _isPasswordObscure
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong!';
                  }

                  return null;
                },
              ),
              ElevatedButton(
                onPressed: login,
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? '),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Daftar disini!',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
