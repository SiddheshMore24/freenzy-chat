import 'package:flutter/material.dart';
import 'package:freenzy_chat/chatMessage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController msg = TextEditingController();
  final List<ChatMessage> messages=<ChatMessage>[];
  void msgDone(String text){
    msg.clear();
    ChatMessage message = ChatMessage(message:text);

    setState(() {

      messages.insert(0, message);
    });
  }
  Widget _textComposerWidget () {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(child:
            TextField(
              decoration: InputDecoration.collapsed(
                  hintText: "Send a message"),
              controller: msg,
              onSubmitted: msgDone,
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(onPressed: (){
                msgDone(msg.text);
              }, icon: Icon(Icons.send)),

            )
          ],
        )

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child:
        ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_,int index)=>messages[index],
          itemCount: messages.length,

        )

        ),
        Divider(height: 1,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )

      ],
    );
  }
}
