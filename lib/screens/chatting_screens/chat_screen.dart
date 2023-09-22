import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/chat_reusbale_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../component/reusbale_row.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {

  var List = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD-0fXdLj4s3iQVN5404cAxqc89i6g2gCb-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQUXqMrzrmkxd3QpxGL5bzgxELsztrL1AgQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHS4YqFQ213jgyaYBsBY-rJYSus8M-XwxrNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXMtm9JAe_h1S27bYdidzkgBhEipAiH-Cjrg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg-5B4QzKAK0n161SAQG8HIKsMeMEbRE1FlQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJzI8ssBFPVXkeOkmcjICIBOzX3dJf8Undxi0ixAsi_CciCXHhVjMc1LggcEkJvS10BGE&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_Kn1LdmFXrO8mTC_20BsbZdQ2g_4oLL6ONasNvQT8t5FLLlB-t5vM-JKazX6q9BljrXA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyRB0PCtpF7En0BMIsguTA2VZcY6AtganZKXK63pPVNKH7EAvhD3t0dWmDoJ8XDSYNNwI&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrPf5JtWX65XwbOr-KHHcn-97HklVvmv8c3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHLkybiP3I5YBAAE11TvQBCRNXt-00rlnEi9k8G5kQJDJ1zdG49ZZqdVFeRR3MqOlyXfM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7dIKr2oJdvab-ejQ-fKBOjLupNwvmt01F2b0ofU9A9zA4QEKix5ubve53bOZdVoJTvsY&usqp=CAU",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {},backgroundColor: appColor.blue,
      child: Icon(Icons.messenger_outline,color: Colors.white,),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimationLimiter(
          child: ListView.builder(
            itemCount: List.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(seconds: 1),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: chatReusbalerow(
                      title: "Khuzaifa khan",
                      title2: "Hey, Connect Me",
                      imageurl: List[index].toString(),

                    ),
                  ),
                ),
              );
            },
          ),
        ),
      )
    );
  }
}
