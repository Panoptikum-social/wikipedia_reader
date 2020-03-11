import 'package:wikipedia_reader/wikipedia_reader.dart';

void main() async {
  var queryString = 'St. Pölten';
  var text = await Article().download(title: queryString);  
  print(text);
}
