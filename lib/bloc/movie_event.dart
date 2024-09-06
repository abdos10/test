part of 'movie_bloc.dart';

@immutable
abstract class MovieEvent {}

class FetchMoviesEvent extends MovieEvent {
  final String endpoint;

  FetchMoviesEvent({required this.endpoint});

}

