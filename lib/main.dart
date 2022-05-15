import 'package:flutter/material.dart';
import 'package:garage/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valentines Garage System',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Valentines Garage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text("Username"),
                  prefixIcon: Icon(Icons.person),
                ),
                toolbarOptions: ToolbarOptions(copy: true, paste: true),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                ),
                maxLength: 20,
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => HomePage()),
                  ),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
