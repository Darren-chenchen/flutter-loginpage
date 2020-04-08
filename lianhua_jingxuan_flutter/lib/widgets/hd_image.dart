
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lianhua_jingxuan_flutter/base/app_config.dart';

class HDImage extends StatelessWidget {

  final double width;
  final double height;
  final String imgPath;
  final String scaleHeight;

  const HDImage({
    Key key,
    this.width,
    this.height,
    this.imgPath = '',
    this.scaleHeight
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.white,
      child: new CachedNetworkImage(
        width: width,
        height: height,
        key: Key(_dealImage()),
        imageUrl: _dealImage(),
        fit: BoxFit.cover,
        placeholder: (context, url) => AppConfig.getPlaceHoder(width, height),
        errorWidget: (context, url, error) => AppConfig.getPlaceHoder(width, height),
      ),
    );
  }

  _dealImage() {
    if (this.scaleHeight != null) {
      if (imgPath.length == 0) {
        return '';
      }
      return (imgPath ?? '') + '?x-oss-process=image/resize,' + this.scaleHeight;
    } else {
      return (imgPath ?? '');
    }
  }
}

//  Image.network(model.image, fit: BoxFit.fill,
//  loadingBuilder: (context, child, progress) {
//  return progress == null
//  ? child
//      : LinearProgressIndicator(
//  backgroundColor: ColorConfig.CE5E5E5,
//  valueColor:
//  new AlwaysStoppedAnimation<Color>(ColorConfig.C0065FF));
//  })