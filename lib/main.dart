import 'package:flutter/material.dart';

import 'markdown/basic_markdown_demo.dart';
import 'markdown/centered_header_demo.dart';
import 'markdown/markdown_body_shrink_wrap_demo.dart';
import 'markdown/original_demo.dart';
import 'markdown/subscript_syntax_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1250),
          child: const SubscriptSyntaxDemo(),
        ),
      ),
    );
  }
}
