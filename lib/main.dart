// CLIでパッケージ追加後、インポート記載した
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// ↓この書き方でもいいっぽい
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // 追加
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text('Hello Flutter!'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
