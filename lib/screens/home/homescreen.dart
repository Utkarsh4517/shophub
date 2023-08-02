import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Shophub',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
