import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/onboard.dart';

class Messages extends StatefulWidget {
  Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.5, 
        title: CommonText(
          text: 'Messages',
          fontSize: 20,
          fontWeight: bold,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
           
            SizedBox(
              height: size.height - 270,
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  height: 5,
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return MessageCard(
                  personImage: account, personMessage: "New Message", personName: 'Hanniel Naa Ameley Tagoe', time: 'Today',
                    
                      onTap: () {},
                );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key, 
    this.onTap,
    required this.time,
    required this.personName, 
    required this.personImage,
    required this.personMessage,
  }) : super(key: key);

  
  final String personName;
  final String time;
  final String personMessage;
  final String personImage;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,       
      title: CommonText(text: personName), 
      trailing: CommonText(text: time, fontSize:10), 
      leading: CircleAvatar(backgroundImage: AssetImage(account)),
      subtitle: CommonText(text: personMessage, textColor: blue2, fontSize: 14,), 
      
    );
  }
}
