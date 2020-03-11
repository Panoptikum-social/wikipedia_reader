import 'package:http/http.dart' as http;
import 'dart:convert';

class Article {

  Future<String> download({String title}) async {
    var baseUri = 'https://de.wikipedia.org/w/api.php?';
    var params = 'action=query&prop=revisions&rvprop=content&format=json&&titles=';
    var url = baseUri + params + title;
    var response = await http.get(url);
    var wikitext = json.decode(response.body)['query']['pages'].values.first['revisions'].first['*'];
    print(wikitext);

    return 'done';
  }
}
