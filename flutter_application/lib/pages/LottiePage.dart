import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottiepage extends StatelessWidget {
  const Lottiepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Animation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assets/lottie/empty_status.json', repeat: true),
            Lottie.asset('assets/lottie/empty.json', repeat: true),
            Lottie.asset('assets/lottie/loading_dialog.json', repeat: true),
            Lottie.asset('assets/lottie/no_internet_connection.json',
                repeat: true),
            Lottie.asset('assets/lottie/notification_request.json',
                repeat: true),
            Lottie.asset('assets/lottie/personal_character.json', repeat: true),
            Lottie.asset('assets/lottie/vr_animation.json', repeat: true),
          ],
        ),
      ),
    );
  }
}
