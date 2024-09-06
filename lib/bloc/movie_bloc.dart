import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movieapp/moviemodul.dart';
import 'package:movieapp/repository/movieRepo.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(IsLoadingState()) {
    on<FetchMoviesEvent>((event, emit) async {
      try {
        emit(IsLoadingState());
        final movies = await MovieRepo.fetchMovies(event.endpoint);
        if (movies.isNotEmpty) {
          emit(LoadedMoviesState(movies: movies));
        } else
          emit(ErrorState(message: 'no movies found'));
      } catch (e) {
        print('Error fetching movies: $e');

        emit(ErrorState(message: e.toString()));
      }
    });
  }
}
