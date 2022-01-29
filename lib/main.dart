import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _percent = 0.1;

  String _getPercent() {
    return (_percent * 100).round().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Tracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: CircularPercentIndicator(
              radius: 150.0,
              lineWidth: 15.0,
              percent: _percent,
              center: Text(_getPercent() + '%',
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold)),
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _percent = _percent + 0.1 >= 1.0 ? 0.1 : _percent + 0.1;
          
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
