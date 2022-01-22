import 'dart:io';
import 'dart:convert';

void main() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('http://headers.jsontest.com/'));
  request.persistentConnection = false;
  request.followRedirects = true;
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    Map<String, dynamic> userAgent = jsonDecode(contents);
    print('User-Agent: ${userAgent['user-agent']}');
  }
}