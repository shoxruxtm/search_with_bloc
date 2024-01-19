abstract class SearchState {}

class InitialState extends SearchState {}

class Loading extends SearchState {}

class LoadedWorks extends SearchState {
  final List<String> words;

  LoadedWorks({required this.words});
}
