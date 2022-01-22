import 'dart:io';
import 'dart:convert';

void main() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('http://date.jsontest.com/'));
  request.persistentConnection = false;
  request.followRedirects = true;
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    Map<String, dynamic> content = jsonDecode(contents);
    print('Date: ${content['date']}');
    print('Milliseconds since epoch: ${content['milliseconds_since_epoch']}');
  }
}