import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soff_cricket_hybrid/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(
      const App()
    )
  );
}
