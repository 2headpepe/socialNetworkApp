import 'dart:convert';

import '../../models/post/post.dart';

const String jsonString = '''
{
  "userImage" : "https://phonoteka.org/uploads/posts/2022-06/1656605825_12-phonoteka-org-p-dora-pevitsa-oboi-13.png",
	"post" :
	{
	  "id": "235",
		"userId" : "100",
		"nickname": "Dora",
			
		"date" : "1969-07-20 20:18:04Z",
			
		"image" : [
				"https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
		],
		

		"description": "hello there",
		    
		"numberOfLikes" : 17
		    
	},
	"comment" : 
	{
	  "id" : "13",
		"userId" : "234s",

		"date" : "1969-07-20 20:18:04Z",
			
		"text" : "hello there",
		"userImage" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album",
	  "nickname" : "Ivan"
	}
	

}
''';
/*
"https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		  "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		  "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
 */

class PostsRepo
{
  void encode()
  {}
  static Posts getPosts()
  {
    final json = jsonDecode(jsonString);
    final result = Posts.fromJson(json);
    return result;
  }

} //!!!! WORKING !!!!