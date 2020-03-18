import 'dart:io';
import 'dart:convert';

main() {
  HttpClient client = new HttpClient();
  
  client.getUrl(Uri.parse("https://www.googleapis.com/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com"))
    .then((HttpClientRequest request) => request.close())
    .then((HttpClientResponse response) {
      response.transform(utf8.decoder).listen((contents) {
         print(contents);
      });
    });
}
