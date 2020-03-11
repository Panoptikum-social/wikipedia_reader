import 'package:wikipedia_reader/wikipedia_reader.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
      var queryString = 'St.Pölten';
      expect(Article(queryString: queryString), '"ok');
    });
  });
}
