import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _createTestQuote() async {
    await Supabase.instance.client.from('quote_requests').insert({
      'project_title': 'Test Quote from App',
      'description': 'This was created from Flutter',
      'status': 'Pending',
      'total_amount': 5000.00,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Quote Created! Check Supabase')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProFix Engineering')),
      body: Center(
        child: ElevatedButton(
          onPressed: _createTestQuote,
          child: const Text('Create Test Quote'),
        ),
      ),
    );
  }
}
