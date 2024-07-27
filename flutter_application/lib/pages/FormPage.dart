import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? _email;

  void _submit() {
    final form = formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Alert'), content: Text('Email: $_email'));
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Type something',
                    labelText: 'Text Field',
                  ),
                ),
                ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Alert'),
                            content: Text('You typed ${_controller.text}'),
                          );
                        });
                  },
                ),
              ],
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value != null && value.contains('@')) {
                      return null;
                    }
                    return 'Not a valid email.';
                  },
                  onSaved: (val) {
                    _email = val;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                  ),
                ),
                ElevatedButton(
                  onPressed: _submit,
                  child: const Text('Login'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
