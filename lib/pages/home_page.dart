import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/model/post.dart';

import '../model/friends.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff251f1f),
        elevation: 0,
        title: Text(
          'TimeLine',
          style: TextStyle(fontSize: 25.0,fontFamily: 'Eater' ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              iconSize: 35,
          ),
        ],
      ),
      backgroundColor: Color(0xff251f1f),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: favorite.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      margin : EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 100,
                      width:80 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3a3740),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 3,
                                color: Color(0xfffe8057).withOpacity(0.5),
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(favorite[index].imageUrl),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 70,
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  favorite[index].name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                  ),
                                ),
                            ),
                          ),
                          Divider(
                            color: Color(0xfffe8057).withOpacity(0.5),
                            height: 10.0,
                            indent: 5.0,
                            endIndent: 5.0,
                          ),
                        ],
                      ),
                    );
                  },
              ),
            ),
            _buildPosts(0),
            _buildPosts(1),
            _buildPosts(2),
            _buildPosts(3),
            _buildPosts(4),
          ],
        ),
      ),
    );
  }
}
_buildPosts(int index){
  return Container(
    margin: EdgeInsets.all(15),
    height: 500,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  width: 3,
                  color: Color(0xfffe8057).withOpacity(0.5),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(posts[index].friend.imageUrl),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
            Expanded(
                child:Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    posts[index].friend.name,
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
            ),
            Text(
              posts[index].timePosted,
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
            )

          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(posts[index].imageUrl),
              fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          height: 50,
          child: Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 10),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(
                      Icons.mode_comment,
                      color: Colors.white54,
                    size: 30,
                  ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      posts[index].comments,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 30,color: Colors.white54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white54,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      posts[index].shared,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      posts[index].comments,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white54,
                      size: 30,
                    ),


                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              posts[index].description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),

            ),
          ),
        )
      ],
    ),
  );


}
