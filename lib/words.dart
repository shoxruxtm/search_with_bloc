import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_with_bloc/bloc/search_bloc.dart';
import 'package:search_with_bloc/bloc/search_state.dart';

class Words extends StatelessWidget {
  const Words({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state is LoadedWorks) {
          return ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return Text(
                state.words[index],
                style: const TextStyle(
                  color: Colors.black,
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
              thickness: 0.2,
              color: Colors.grey,
            ),
            itemCount: state.words.length,
          );
        }
        return const SizedBox();
      },
    );
  }
}
