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
    return  new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  //条目构建函数传入了index,根据index索引到特定图片
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,//
                //pagination: new SwiperPagination(), //页码，通俗讲就是下边的圆点  这些都是控件默认写好的,直接用
                //control: new SwiperControl(),//控制器，通俗讲就是两边的箭头
              ),
            ),
            Row(
              children: [
                Text("this is a data1"),
                Text("this is a data2")
              ],
            )
          ],
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


