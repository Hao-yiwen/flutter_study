import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Welocome',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null) {
                      return null;
                    }
                    return 'Not a valid email.';
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null) {
                      return null;
                    }
                    return 'Not a valid email.';
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        GoRouter.of(context).go('/catalog');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
