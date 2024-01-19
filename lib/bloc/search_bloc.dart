import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_with_bloc/bloc/search_event.dart';
import 'package:search_with_bloc/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(LoadedWorks(words: words)) {
    on<SearchWord>((event, emit) {
      List<String> searchedTitles = [];
      for(var e in words){
        if(e.contains(event.word)){
          searchedTitles.add(e);
        }
      }
      emit(
        LoadedWorks(
          words: searchedTitles
        )
      );
    });
  }
 static List<String> words = [
    "Flutter",
    "Google",
    "Flutter Guys",
    "Tutorial",
    "Bloc course",
    "State management",
    "Project",
  ];
}
