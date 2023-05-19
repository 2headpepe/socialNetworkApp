/*import 'dart:convert';
//import 'dart:html';

import 'package:untitled1/data/models/person.dart';
import 'package:http/http.dart' as http;

//class PersonRepo
//{

Future<Person> getPerson(/*int page, String name*/) async {
  final url = 'https://rickandmortyapi.com/api/character';
  const anotherUrl = 'https://about.google/static/data/locations.json';
  try {
//        var response = await http.get(Uri.parse('$url?page=$page'));
    /*&name=$name*/
    var response = await http.get(Uri.parse(anotherUrl));
    //var response1 = await http.
    if (response.statusCode == 200) {
      var jsonResult = json.decode(response.body);
      return Person.fromJson(jsonResult);
    } else {
      throw Exception('Error : ${response.reasonPhrase}');
    }
  } catch (e) {
    throw Exception(e.toString());
  }
}
//}


 */