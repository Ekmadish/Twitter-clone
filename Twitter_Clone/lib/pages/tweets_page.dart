import 'package:Twitter_Clone/addtweet.dart';
import 'package:Twitter_Clone/utils/variables.dart';
import 'package:flutter/material.dart';

class Tweets extends StatefulWidget {
  Tweets({Key key}) : super(key: key);

  @override
  _TweetsState createState() => _TweetsState();
}

class _TweetsState extends State<Tweets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTweet()),
        ),
        child: Icon(
          Icons.add,
          size: 34,
        ),
      ),
      appBar: AppBar(
        actions: [Icon(Icons.star)],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutwitter",
              style: mystyle(20, Colors.white, FontWeight.w700),
            ),
            SizedBox(
              width: 5.0,
            ),
            Image(
              width: 45,
              height: 45,
              image: AssetImage('images/logo.png'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext contex, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(exampleImage),
              ),
              title: Text(
                "Some twittes",
                style: mystyle(20, Colors.black, FontWeight.w400),
              ),
              subtitle: Column(
                children: [
                  Text(
                    'Flutter is cool ',
                    style: mystyle(20, Colors.black, FontWeight.w100),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.comment),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "4",
                            style: mystyle(18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "4",
                            style: mystyle(18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.share),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "4",
                            style: mystyle(18),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
