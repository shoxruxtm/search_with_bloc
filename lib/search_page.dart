import 'package:flutter/material.dart';
import 'package:search_with_bloc/search_field.dart';
import 'package:search_with_bloc/words.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Words"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SearchField(),
          Words(),
        ],
      ),
    );
  }
}
