import 'package:flutter/material.dart';
const name ="Siddhesh";
class ChatMessage extends StatelessWidget {

 final String message ;
 ChatMessage({required this.message});
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(name[0]),

            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(message),
              )
            ],
          )
        ],
      ),

    );
  }
}
