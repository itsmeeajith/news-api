import 'package:flutter/material.dart';

class BuildPageViewBuilder extends StatefulWidget {
  const BuildPageViewBuilder({super.key});

  @override
  State<BuildPageViewBuilder> createState() => _BuildPageViewBuilderState();
}

class _BuildPageViewBuilderState extends State<BuildPageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // PageView.builder(itemBuilder: itemBuilder)
        ],
      ),
    );
  }
}
