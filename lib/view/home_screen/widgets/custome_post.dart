import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/color_constants.dart';

class CustomPostCard extends StatefulWidget {
  const CustomPostCard({super.key,
  required this.proPic,
  required this.username,
  required this.description,

  
  
  });

final String proPic;
final String username;
final String description;

  @override
  State<CustomPostCard> createState() => _CustomPostCardState();
}

class _CustomPostCardState extends State<CustomPostCard> {
  List<String> postImageList = [
    "https://images.pexels.com/photos/2775196/pexels-photo-2775196.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/910411/pexels-photo-910411.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=400"
  ];
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    widget.proPic),
              ),
              title: Row(
                children: [
                  Text(
                    widget.username,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.verified,
                    size: 15,
                    color: ColorConstants.primaryblue,
                  )
                ],
              ),
              subtitle: Text(
                "Tokyo, Japan",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
              ),
              trailing: Icon(Icons.more_horiz),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      currentPage = value + 1;
                      setState(() {});
                    },
                    itemCount: postImageList.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(postImageList[index]))),
                      child: Container(),
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    top: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.6),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        "$currentPage/${postImageList.length}",
                        style: TextStyle(color: ColorConstants.primaryWhite),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 25,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.maps_ugc_rounded,
                        size: 25,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.send,
                        size: 25,
                      ),
                      SizedBox(
                        width: 16,
                      )
                    ],
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      postImageList.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                          backgroundColor: (index == currentPage - 1)
                              ? ColorConstants.primaryblue
                              : null,
                          radius: (index == currentPage - 1) ? 5 : 3,
                        ),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    size: 25,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [CircleAvatar(radius: 10,backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(
                    text: 'Liked by ',
                    style: TextStyle(color: ColorConstants.primaryblack),
                    children: const <TextSpan>[
                      TextSpan(text: 'Caig_lv', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' and'),
                      TextSpan(text: '44686 others',style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              )
              
              ],),
            ),
        
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'josua_l ',
                      style:TextStyle(fontWeight: FontWeight.bold,color: ColorConstants.primaryblack),
                      children: const <TextSpan>[
                        
                        TextSpan(text:"lorem lorem lorem",   style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
           ) 
          ],
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return Container(
//     child: Column(
//       children: [
//         Row(
//           children: [
//             CircleAvatar(),
//             SizedBox(
//               width: 10,
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Text("Poornima"),
//                     Icon(
//                       Icons.verified,
//                       color: Colors.blue,
//                     )
//                   ],
//                 ),
//                 Text("Tokio,japan")
//               ],
//             ),
//             Icon(Icons.more_horiz)
//           ],
//         ),
//       ],
//     ),
//   );
// }
