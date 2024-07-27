import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      title: 'Pressed Example',
      home: Scaffold(
        body: Center(
          child: MyButton()
        )
      )
    )
  );
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Mybutton was tapped!');
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightBlue
        ),
        child: const Center(
          child: Text('Engage'),
        )
      )
    );
  }
}
