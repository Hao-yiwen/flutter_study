import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationPage extends StatelessWidget {
  const LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(AppLocalizations.of(context)?.helloWorld ?? 'Default Title'),
      ),
      body: Center(
          child: Column(
        children: [
          Localizations.override(
              context: context,
              locale: const Locale('en', 'US'), // English
              child: Builder(
                builder: (context) => CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    onDateChanged: (value) {}),
              )),
        ],
      )),
    );
  }
}
