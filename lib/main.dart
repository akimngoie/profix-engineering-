import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // We will put your Supabase keys here later
  await Supabase.initialize(
    url: 'https://tfkyhusvrcqvthttsevo.supabase.co',
    anonKey: 'sb_publishable_M4UUXOaNH7rX_Xc6zj1ggA_3ZoBQmAK',
  );

  runApp(const ProFixApp());
}

class ProFixApp extends StatelessWidget {
  const ProFixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProFix Engineering',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProFix Engineering'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'Welcome to ProFix Engineering!\nConnected to Supabase',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
