import 'package:flutter/material.dart';

class MixState extends StatefulWidget {
  const MixState({super.key});

  @override
  State<MixState> createState() {
    return MixStateState();
  }
}

class MixStateState extends State<MixState> {
  bool _active = false;

  void _handleTabBoxChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: TapboxC(
          active: _active,
          onChanged: _handleTabBoxChange,
        ),
      )
    );
  }
}

class TapboxC extends StatefulWidget {
  final bool active;
  final void Function(bool value) onChanged;

  TapboxC({super.key, required this.active, required this.onChanged});

  @override
  State<TapboxC> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(

    )
  }
}
