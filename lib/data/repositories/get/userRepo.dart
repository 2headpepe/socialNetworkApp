import 'dart:convert';

import '../../models/post/post.dart';
import '../../models/user/user.dart';

//redacted
const String jsonString = '''
{
	  "id" : "100",
		"nickname": "mentaldora",
      
		"information" :
		{
				"description" : "description",
		    "firstName" : "Dora",
			  "secondName" : "Dora",
			  "image" : "https://phonoteka.org/uploads/posts/2022-06/1656605825_12-phonoteka-org-p-dora-pevitsa-oboi-13.png",
		    "dateOfBirth" : "21.12.2003",
		    "gender" : "woman"
	   },
      
	  "followers" :[
	  {
		  "id" : "1",
		  "image" : "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
	  },
	  {
		  "id" : "2",
		  "image" : "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
	  },
	  {
		  "id" : "3",
		  "image" : "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
	  },
	  {
		  "id" : "4",
		  "image" : "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
	  },
	  {
		  "id" : "5",
		  "image" : "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
	  }
	  ],
	    
	    "followings" :[
	    {
		    "id" : "1",
		   "image" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"
		   },
	    {
		    "id" : "2",
		    "image" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"
	    },
	    {
		    "id" : "3",
		    "image" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"
	    },
	    {
		    "id" : "4",
		    "image" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"

	    },
	    {
		    "id" : "5",
		    "image" : "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"
	    }
	  ],

		"posts" : [ 
	    {
        "idPost" : "1",
        "userId" : "1",
        "images" : [
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
        "nickname" : "mentaldora",
        "numberOfLikes" : 10
      },
	    {
        "idPost" : "1",
        "userId" : "1",
        "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
        "nickname" : "mentaldora",
        "numberOfLikes" : 10
      },
      {
        "idPost" : "1",
        "userId" : "1",
        "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
        "nickname" : "mentaldora",
        "numberOfLikes" : 10
      },
      {
        "idPost" : "1",
        "userId" : "1",
        "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
        "nickname" : "mentaldora",
        "numberOfLikes" : 10
      },
      {
        "idPost" : "1",
        "userId" : "1",
        "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
        "nickname" : "mentaldora",
        "numberOfLikes" : 10
      }
	    ]
	      
	}
''';


class UserRepo
{
  void encode()
  {}
  static User getUser()
  {
    final json = jsonDecode(jsonString);
    final result = User.fromJson(json);
    return result;
  }

}             //!!!! WORKING !!!!