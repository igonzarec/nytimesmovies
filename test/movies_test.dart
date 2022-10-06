import 'package:ingenio_challenge/data/movies_repository.dart';
import 'package:test/test.dart';

void main() {
  test('Parse movies', () async {
    final mockRepository = MockMoviesRepositoryImpl();
    final movies = await mockRepository.getMovies();

    expect(movies.length, 20);
  });
}
