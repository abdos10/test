part of 'movie_bloc.dart';

@immutable
abstract class MovieState {}

final class MovieInitial extends MovieState {}

class IsLoadingState extends MovieState {}

class LoadedMoviesState extends MovieState {
  final List<Movie> movies;

  LoadedMoviesState({required this.movies});
}

class ErrorState extends MovieState {
  final String message;

  ErrorState({required this.message});

}
