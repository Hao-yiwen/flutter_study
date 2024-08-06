import 'package:flutter/material.dart';

class ValidTextfield extends StatefulWidget {
  const ValidTextfield({super.key});

  @override
  State<ValidTextfield> createState() => _ValidTextfieldState();
}

class _ValidTextfieldState extends State<ValidTextfield> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ValidTextfield"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some text";
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('process data'),
                      action: SnackBarAction(
                          label: '关闭',
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          }),
                    ));
                  }
                },
                child: const Text("submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
