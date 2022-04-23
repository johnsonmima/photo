// ************************************************
// Desc:  Main
//************************************************
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//material app
import 'package:photo/app.dart';

void main() {
  // disable landscape mode
  // wait until setPreferredOrientations is done and then start the app
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const App());
  });
}
