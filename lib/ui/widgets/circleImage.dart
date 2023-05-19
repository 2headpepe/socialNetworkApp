

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget
{
  final double size;
  final String image;

  CircleImage({Key? key,required this.size,required this.image}):super(key:key);

  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final _key = GlobalKey();
    var newImage = Image(image: NetworkImage(image), key: _key,);
    double? aspectRatio = _key.currentContext?.size?.aspectRatio;
    print(aspectRatio);
    if(aspectRatio==null)
      {
        return Container(color: Color.fromRGBO(200, 5, 5, 1),height: size,width: size,);
      }
    else if(aspectRatio>1)
      {
        return ClipRRect(
          borderRadius: BorderRadius.circular(size),
          child:
          CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fitWidth,
            height: size,
            width: size,

          ),
        );
      }
    else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child:
        CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fitWidth,
          height: size,
          width: size,

        ),
      );
    }


  }

}