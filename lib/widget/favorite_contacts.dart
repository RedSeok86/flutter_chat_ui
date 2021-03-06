import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/chat_screen.dart';

import '../models/message_model.dart';
import '../models/message_model.dart';
import '../models/message_model.dart';
import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Favorite Contacts',style: TextStyle(fontSize: 18.0, color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                IconButton(
                  icon: Icon(
                      Icons.more_horiz
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> ChatScreen(user: favorites[index]))),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0),
                          Text(favorites[index].name, style: TextStyle(fontSize: 16.0,color: Colors.blueGrey,fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
        ],
      ),
    );
  }
}
