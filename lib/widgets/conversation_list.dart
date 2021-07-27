import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageURL;
  String time;
  bool isMessageRead;
  ConversationList({
    @required this.name,
    @required this.messageText,
    @required this.imageURL,
    @required this.time,
    @required this.isMessageRead,
  });

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.imageURL),
              maxRadius: 30.0,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      widget.messageText,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey.shade600,
                        fontWeight: widget.isMessageRead
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight:
                    widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
