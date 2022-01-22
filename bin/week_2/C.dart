import 'dart:io';
import 'dart:convert';

void main() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('https://tl.oamk.fi/whmp/dl/example.json'));
  request.persistentConnection = false;
  request.followRedirects = true;
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    Map<String, dynamic> user = jsonDecode(contents);
    print('Name is: ${user['name']}');
    print('Email address is: ${user['email']}');
  }
}