import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class GeneratorPage extends StatefulWidget {
  @override
  _GeneratorPageState createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  final List<String> _wiseWords = [
    'The only limit to our realization of tomorrow is our doubts of today.',
    'The purpose of our lives is to be happy.',
    'Life is what happens when you’re busy making other plans.',
    'Get busy living or get busy dying.',
    'You have within you right now, everything you need to deal with whatever the world can throw at you.',
  ];
  String _currentWord = '';

  void _generateWord() {
    final random = Random();
    setState(() {
      _currentWord = _wiseWords[random.nextInt(_wiseWords.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    _generateWord();  // Generate an initial wise word
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wise Words Generator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            _currentWord,
            style: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateWord,
        child: Icon(Icons.lightbulb),
      ),
    );
  }
}