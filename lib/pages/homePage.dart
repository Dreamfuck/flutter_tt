import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List<CachedNetworkImage> imgs;

  @override
  void initState() {
    imgs = [
      //建立了一个图片数组
      myImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=183643270,2578741513&fm=26&gp=0.jpg"),
      myImage("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=4290782190,4278671771&fm=26&gp=0.jpg"),
      myImage("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=4033358314,3149479164&fm=26&gp=0.jpg")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: 172,
        child : Swiper(
          itemBuilder: (BuildContext context,int index){
            return imgs[index];
          },
          itemCount: imgs.length,
          pagination: new SwiperPagination(),
          autoplay: true,
          autoplayDisableOnInteraction: true,
        ),
      ),
    );
  }

  myImage(String url){
    return new CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: BoxFit.cover,
    );
  }

}
