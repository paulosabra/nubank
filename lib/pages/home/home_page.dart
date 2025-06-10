import 'package:flutter/material.dart';
import 'package:nubank/components/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NuAppBar(userName: 'Paulo Henrique'),
      body: Center(child: Text('Home Page')),
    );
  }
}
