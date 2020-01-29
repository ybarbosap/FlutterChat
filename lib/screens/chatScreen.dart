import 'package:flutter/material.dart';
import 'package:flutter_chat/models/messageModel.dart';
import 'package:flutter_chat/models/userModel.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({@required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))
                : BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
            color: isMe ? Colors.deepPurple[100] : Colors.deepPurple[50],
          ),
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80)
              : EdgeInsets.only(top: 8.0, bottom: 8.0),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          width: MediaQuery.of(context).size.width * 0.79,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.time,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 8.0),
              Text(
                message.text,
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
        !isMe
            ? IconButton(
                onPressed: () {
                  setState(() {
                    message.isLiked = !message.isLiked;
                  });
                },
                icon: message.isLiked
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.blueGrey,
                      ))
            : SizedBox.shrink()
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo,
                size: 25, color: Theme.of(context).primaryColor),
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration:
                  InputDecoration.collapsed(hintText: 'Send a message ...'),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send,
                size: 25, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28.0),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    // compare and return the boolean
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }
}
