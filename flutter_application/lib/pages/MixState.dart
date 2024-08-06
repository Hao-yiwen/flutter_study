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
        appBar: AppBar(
          title: const Text('MixState'),
        ),
        body: Center(
          child: SizedBox(
            child: TapboxC(
              active: _active,
              onChanged: _handleTabBoxChange,
            ),
          ),
        ));
  }
}

@immutable
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
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(color: Colors.teal[700]!, width: 10)
              : null,
        ),
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
    const snackBar = SnackBar(
      content: Text("Tap"),
      duration: Duration(milliseconds: 500),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
    // ScaffoldMessenger.of(context).clearSnackBars();
  }
}
