import 'package:flutter_chat/models/userModel.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

// You
final User currentUser =
    User(id: 0, name: 'Current User', imgUrl: 'assets/images/greg.jpg');

// Users
final User greg = User(id: 1, name: 'Greg', imgUrl: 'assets/images/greg.jpg');

final User james =
    User(id: 2, name: 'James', imgUrl: 'assets/images/james.jpg');

final User john = User(id: 3, name: 'John', imgUrl: 'assets/images/john.jpg');

final User olivia =
    User(id: 4, name: 'Olivia', imgUrl: 'assets/images/olivia.jpg');

final User sam = User(id: 5, name: 'Sam', imgUrl: 'assets/images/sam.jpg');

final User sophia =
    User(id: 6, name: 'Sophia', imgUrl: 'assets/images/sophia.jpg');

final User steven =
    User(id: 7, name: 'Steven', imgUrl: 'assets/images/steven.jpg');

// Favorits
List<User> favorits = [sam, steven, olivia, james, sophia];

// Messages // Example messages on screens
List<Message> chats = [
  Message(
      sender: greg,
      time: '5:30 PM',
      text: 'Hey, how\'s it going? What did you do today',
      isLiked: false,
      unread: true),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
