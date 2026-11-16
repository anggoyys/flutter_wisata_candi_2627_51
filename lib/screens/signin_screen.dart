import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class SigninScreen extends StatefulWidget {

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  String _errorText="";
  bool _isSignedIn=false;
  bool _obscurePassword=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'),),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //todo 5 pengguna
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              //todo 6 sandi
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  border: OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText: null,
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _obscurePassword= !_obscurePassword;
                      });
                    },
                    icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility))
                ),
                obscureText: _obscurePassword,
              ),

              // todo 7 sign in
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){},
               child: const Text('Sign In')),
              // todo 8 sign up
                            const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){},
               child: const Text('Belum punya akun ? Daftar disini')),
            ],
          ),
        ),
      ),
    );
  }
}