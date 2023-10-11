import 'package:flutter/material.dart';
import 'package:flutter_provider_1/pages/home_page.dart';
import 'package:flutter_provider_1/pages/setting_page.dart';
import 'package:flutter_provider_1/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (context) => UserProvider(),)
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}
