import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
                builder: (BuildContext _context, UserProvider value,
                    Widget? child) {
                  return Text(
                      "Username ${value.getUserName}");
                },
            ),
            TextField(
              controller: userNameController,
              decoration: InputDecoration(hintText: "Enter username"),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<UserProvider>().changeUserName(
                      newUserName: userNameController.text.toString());

                  userNameController.clear();
                },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
