import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/user_provider.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
      ),
      body: Center(
        child: Container(
          child: Text(
            context.watch<UserProvider>().getUserName,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
