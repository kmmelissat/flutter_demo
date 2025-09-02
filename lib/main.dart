import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Custom color palette
  static const Color _gunmetal = Color(0xFF2C383E);
  static const Color _paynesGray = Color(0xFF586F7C);
  static const Color _lightBlue = Color(0xFFB8DBD9);
  static const Color _azure = Color(0xFFD6E8E9);
  static const Color _ghostWhite = Color(0xFFF4F4F9);
  static const Color _darkSpringGreen = Color(0xFF04724D);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          // Primary colors
          primary: _darkSpringGreen,
          onPrimary: _ghostWhite,
          primaryContainer: _lightBlue,
          onPrimaryContainer: _gunmetal,

          // Secondary colors
          secondary: _paynesGray,
          onSecondary: _ghostWhite,
          secondaryContainer: _azure,
          onSecondaryContainer: _gunmetal,

          // Surface colors
          surface: _ghostWhite,
          onSurface: _gunmetal,
          surfaceContainerHighest: _azure,

          // Error colors (keeping default but with our palette)
          error: Colors.red.shade700,
          onError: _ghostWhite,
        ),

        // AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: _darkSpringGreen,
          foregroundColor: _ghostWhite,
          elevation: 2,
          shadowColor: _gunmetal.withValues(alpha: 0.3),
        ),

        // Card theme
        cardTheme: CardThemeData(
          color: _azure,
          shadowColor: _gunmetal.withValues(alpha: 0.2),
          elevation: 4,
        ),

        // Floating Action Button theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: _darkSpringGreen,
          foregroundColor: _ghostWhite,
        ),

        // Text theme
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: _darkSpringGreen,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(color: _gunmetal),
          bodyMedium: TextStyle(color: _paynesGray),
        ),
      ),
      home: const MyHomePage(title: 'Custom Themed App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
