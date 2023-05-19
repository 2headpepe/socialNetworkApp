# Social network

# Images

|   Home page - feed    |     Post of user     |      User profile       |      Search page       |      Settings page       |
| :-------------------: | :------------------: | :---------------------: | :--------------------: | :----------------------: |
| ![](images/feed1.jpg) | ![](images/post.jpg) | ![](images/profile.jpg) | ![](images/search.jpg) | ![](images/settings.jpg) |

# User json example:

```json
{
  "id": "100",
  "nickname": "mentaldora",

  "information": {
    "description": "description",
    "firstName": "Dora",
    "secondName": "Dora",
    "image": "https://phonoteka.org/uploads/posts/2022-06/1656605825_12-phonoteka-org-p-dora-pevitsa-oboi-13.png",
    "dateOfBirth": "21.12.2003",
    "gender": "woman"
  },

  "followers": [
    {
      "id": "1",
      "image": "https://sun1-28.userapi.com/impg/c858036/v858036600/226304/Z31PnWcA0Iw.jpg?size=400x0&quality=96&crop=1018,591,509,509&sign=b3e2034206d6ca78329d6c981ed9579c&c_uniq_tag=zmlmZfqv8ttTK-VliMgnxb3zs_PqoxSfLPIGE2AWRMQ&ava=1"
    }
  ],

  "followings": [
    {
      "id": "1",
      "image": "https://sun9-38.userapi.com/impg/W6oQpe1ETHoFCDdDBLBFYN3misKRD5-384Y3Lw/e2ta3xdhZxs.jpg?size=810x1080&quality=96&sign=ce5dc186503e8788328db55bcf9b7144&type=album"
    }
  ],

  "posts": [
    {
      "idPost": "1",
      "userId": "1",
      "images": [
        "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
      ],
      "nickname": "mentaldora",
      "numberOfLikes": 10
    }
  ]
}
```
