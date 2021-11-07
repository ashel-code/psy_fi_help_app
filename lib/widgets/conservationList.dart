import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:psy_fi_help_app/screens/chatDetailPage.dart';

class ConservationList extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConservationList ({required this.name, required this.messageText,
                  required this.imageUrl, required this.time, required this.isMessageRead});

  // Getters
  String getName() {
    return name;
  }
  String getMessageText() {
    return messageText;
  }
  String getImageURL() {
    return imageUrl;
  }
  bool getIsMessageRead() {
    return isMessageRead;
  }
  @override
  ConservationListState createState() => ConservationListState();
}

class ConservationListState extends State<ConservationList> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Text(widget.messageText, style: TextStyle(fontSize: 13,
                          color: Colors.grey.shade600,
                              fontWeight: widget.isMessageRead?FontWeight.bold:
                              FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(widget.time, style: TextStyle(fontSize: 12, fontWeight:
            widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}