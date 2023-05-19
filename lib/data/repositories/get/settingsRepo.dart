import 'dart:convert';

import 'package:untitled1/data/models/settings/settings.dart';

class SettingsRepo
{
  static void encode()
  {

  }

  static Settings decode()
  {
        var json = jsonDecode(stringJson);
        var result = Settings.fromJson(json);
        return result;
  }
}

String stringJson =
    '''
{
	  "id" : "1",
      
		"nickname": "mentaldora",
		"information" :
		{
		  "description" : "hello there",
		  "image" : "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		  "firstName" : "dora",
			"secondName" : "dora",
		  "dateOfBirth" : "21.12.2003",
		  "gender" : "woman"
	  },
		    "password" : "secret"    
	}
''';