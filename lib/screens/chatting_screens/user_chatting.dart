// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class userChatting extends StatefulWidget {
//   const userChatting({super.key});
//
//   @override
//   State<userChatting> createState() => _userChattingState();
// }
//
// class _userChattingState extends State<userChatting> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             physics: BouncingScrollPhysics(),
//             reverse: true,
//             // controller: _scrollController,
//             itemCount: 50,
//             itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(7),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                              Flexible(
//                               child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(14),
//                                       topRight: Radius.circular(14),
//                                       bottomLeft: Radius.circular(14),
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.black12,
//                                           blurRadius: 4,
//                                           offset: Offset(0,2)
//                                       )
//                                     ],
//                                     color: Colors.white30,),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(6),
//                                     child: Column(crossAxisAlignment: CrossAxisAlignment.end,
//                                       children: [
//                                         Text("",
//                                           style: TextStyle(
//                                               fontSize: 15,
//                                               color: Colors.black87),
//                                         ),
//                                         Text("10:00PM", style: TextStyle(fontSize: 10, color: Colors.black),)
//                                       ],
//                                     ),
//                                   )),
//                             ),
//                           ],
//                         ),  // Chat 1
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [  Flexible(
//                               child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(14),
//                                       topRight: Radius.circular(14),
//                                       bottomRight: Radius.circular(14),
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.black12,
//                                           blurRadius: 4,
//                                           offset: Offset(0,2)
//                                       )
//                                     ],
//
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(6),
//                                     child:Column(crossAxisAlignment: CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "New",
//                                           style: TextStyle(
//                                               fontSize: 15,
//                                               color: Colors.black),
//                                         ),
//
//                                       ],
//                                     ),
//                                   )),
//                             )
//                           ],
//                         ), // Chat 2
//                       ],
//                     ),
//                   ),
//                 );
//
//             },
//           ),
//         ),
//         Container(
//           color: Color.fromRGBO(243, 233, 226, 1), // remove this
//           height: 100,
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           offset: (Offset(1, 2)),
//                           color: Colors.black12,
//                           blurRadius: 2,
//                         )
//                       ],
//                     ),
//                     child: TextField(
//                         // controller: messageController,
//                         maxLines: null,
//                         decoration: InputDecoration(
//                             prefixIcon: Icon(
//                               Icons.emoji_emotions_outlined,
//                               color: Colors.grey,
//                               size: 30,
//                             ),
//                             border: InputBorder.none,
//                             hintStyle: TextStyle(color: Colors.blue),
//                             hintText: 'Type Something...')),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 SizedBox(
//                   width: 50,
//                   child: CircleAvatar(
//                     radius: 24,
//                     backgroundColor: Color.fromRGBO(0, 170, 132, 1),
//                     child: CupertinoButton(
//                       padding: EdgeInsets.zero,
//                       onPressed: () {
//
//                       },
//                       child: Icon(
//                         Icons.send,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
