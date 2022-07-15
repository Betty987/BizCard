import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Biz Card"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _getcard(),
              _getavatar(),
            ],
          ),
        ));
  }

  Container _getcard() {
    return Container(
      width: 300,
      height: 250,
      margin:EdgeInsets.all(50),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(14)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Bethlehem Tassew"),
        Text("betty.meg356@gmail.com"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.person_add), Text("T:@betty987035")],
        )
      ]),
    );
  }

  _getavatar() {
    return Container(
      width:100,
      height:100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.all(Radius.circular(50)),
        border:Border.all(color: Colors.redAccent,width:100),
        image: DecorationImage(image:NetworkImage("https://picsum.photos/200/300"))


      ),

    );
  }
}
