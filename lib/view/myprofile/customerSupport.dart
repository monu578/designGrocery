import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';


class CustomerSupportChatScreen extends StatefulWidget {
  @override
  _CustomerSupportChatScreenState createState() =>
      _CustomerSupportChatScreenState();
}

class _CustomerSupportChatScreenState extends State<CustomerSupportChatScreen> {
  final List<Message> _messages = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.getbgcolor,
      appBar: CustomAppBars(
        title: 'Customer Support Chat'
      ),
      body: Stack(
        children: [
          // Positioned(left: 0,right:0,top: 0,
          //     child: Image.network("https://wallpapercave.com/wp/wp8112166.jpg",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,)),
          Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _buildMessage(_messages[index]);
                },
              ),
            ),
            _buildInputField(),
          ],
        ),]
      ),
    );
  }

  Widget _buildMessage(Message message) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 250,top: 10,bottom: 10,right: 20),
      child: ClipPath(
        clipper: LowerNipMessageClipper(MessageType.send),
        child: Container(
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 25),
          decoration: BoxDecoration(
              color: greenShade200,
              boxShadow: [BoxShadow(
                  color: grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset:Offset(3,3)
              )]
          ),
          child: Text(message.text,style: CustomTheme.mostviewhome.copyWith(fontSize: 16),),
        ),
      ),
    );
  }

  Widget _buildInputField() {
    final notifires=Provider.of<ColorNotifires>(context);

    return Container(
      decoration: BoxDecoration(
        color: notifires.getbgcolor.withOpacity(.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width-70,
              child: TextField(
                style: TextStyle(color: notifires.getwhiteblackcolor),
                textInputAction: TextInputAction.done,
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2,color: notifires.getgreycolor)
                  ),
                  contentPadding: EdgeInsets.only(top: 8,left: 20),
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2,color: notifires.mostviewcolor)
                  ),
                  hintText: 'Type a message...',
                  hintStyle: TextStyle(color: notifires.hintColor)
                ),
              ),
            ),
            IconButton(
              color: blue,
              icon: Icon(Icons.send,size: 30,color: notifires.getblueyellow,),
              onPressed: () => _handleSendMessage(),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(
          text: _textController.text,
          sender: 'Customer',
        ));
        _textController.clear();
      });
    }
  }
}

class Message {
  final String text;
  final String sender;

  Message({required this.text, required this.sender});
}




