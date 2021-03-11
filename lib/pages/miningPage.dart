import 'package:flutter/material.dart';

class MiningPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MiningPage();
}
class _MiningPage extends State<MiningPage>{
  List<int> mList = [];
  List<ExpandState> expandStateList = [];

  @override
  void initState() {

    for(int i=0;i<10;i++)
    {
      mList.add(i);
      expandStateList.add(ExpandState(i,false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
        child:Center(
          child:SingleChildScrollView(
            child:ExpansionPanelList(
              expansionCallback: (index,bool){
                //回调
                setState(() {
                  expandStateList[index].isOpen=! expandStateList[index].isOpen;
                });
              },

              children: mList.map((index){
                return ExpansionPanel(
                  headerBuilder: (context,isExpanded){
                    return ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        title: Text('标题')
                      );
                    },
                  body: ListBody(
                    children: <Widget>[
                      Card(
                          margin:EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Padding(padding: EdgeInsets.all(8),child: Text('我是内容'),),
                        )
                      ],
                    ),
                  isExpanded: expandStateList[index].isOpen,
                  canTapOnHeader: true,
                );
              }).toList(),

            ) ,
          ),
        )

    );

  }

}
class ExpandState{
  var isOpen;
  var index;
  ExpandState(this.index,this.isOpen);
}