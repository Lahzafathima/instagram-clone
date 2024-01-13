import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage('assets/images/reel.png')),
                ),
              ),
              title: Text('personame'),
              subtitle: Text('calicut,kozhikode'),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/reel.png'))),
            ),
            ListTile(
              leading: Wrap(
                spacing: 10,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20,
                  ),
                  //SvgPicture.asset('assets/images/bubble-comment.svg', width: 20,)
                ],
              ),
              trailing: Icon(
                Icons.bookmark_add_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text('1000 likes',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ),
            ]),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text('hey guys subscribe',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              ),
            ]),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text('View all 15 comments', style: TextStyle()),
              ),
            ]),
          ],
        );
      },
    );
  }
}
