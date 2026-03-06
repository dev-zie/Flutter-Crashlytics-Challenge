import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crashlytics', style: TextStyle(fontSize: 32)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FirebaseCrashlytics.instance.crash();
          },
          style: ElevatedButton.styleFrom(fixedSize: Size(300, 300)),
          child: Text('Crash', style: TextStyle(fontSize: 48)),
        ),
      ),
    );
  }
}
