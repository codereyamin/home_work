import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'screen/main/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize(aLocaleLanguageList: [
    LanguageDataModel(name: 'English', languageCode: 'en'),
    LanguageDataModel(name: 'Hindi', languageCode: 'hi'),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Mainscreen(),
    );
  }
}
