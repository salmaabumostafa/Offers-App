import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

import 'const.dart';
import 'model chat.dart';


class ContactSupport extends StatefulWidget {
  const ContactSupport({super.key});

  @override
  State<ContactSupport> createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {
  TextEditingController text =TextEditingController();
  String myname='Contact Support';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87 ,
        elevation: 0,
        title: Text('Contact Support',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Container(
          color: Colors.grey[800],
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Chat.length,
                  itemBuilder: (_,index)=>BubbleSpecialThree(
                    isSender: Chat[index].sender_name == myname? true:false ,
                    text: Chat[index].text.toString(),
                    color: Chat[index].sender_name == myname?Colors.blue.shade800:Colors.black26 ,
                    tail: true,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  ),),
              ),
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.black87,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: text,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        Chat.add(model_chat(text.text, myname));
                        text.text='';
                      });
                    }, icon: Icon(Icons.send,color: Colors.blue.shade800,))
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

