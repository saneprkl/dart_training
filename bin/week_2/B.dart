import 'dart:io';
import 'dart:convert';

void main() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('http://weather.willab.fi/weather.xml'));
  request.persistentConnection = false;
  request.followRedirects = true;
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    final regExp = RegExp(r".*tempnow.*");
    final temperature = regExp.stringMatch(contents).toString();
    List<String> temperatureParts = temperature.split(RegExp(r"[<>]"));
    print(temperatureParts[2]);
  }
}