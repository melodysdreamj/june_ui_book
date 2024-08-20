import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import 'item.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PreferredSize(
                preferredSize: Size.fromHeight(70.0),
                child: SliverAppBar(
                  toolbarHeight: 80,
                  pinned: false,
                  backgroundColor: Colors.white,
                  title: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search in Mail",
                            contentPadding: EdgeInsets.only(top: 11),
                            border: InputBorder.none,
                            icon: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(Icons.dehaze)),
                            suffixIcon: Container(
                              height: 5,
                              width: 5,
                              margin: EdgeInsets.all(5),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage: AssetImage(
                                      "assets/uihub/gmail_ui/p5.jpg"),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              )
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text('Primary'),
              ),
              ListView(
                children: [
                  ItemView(
                      username: "Tony",
                      userAvatar:
                      "assets/uihub/gmail_ui/p1.jpg",
                      avatarColor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Assignment",
                      body:
                      "hello there, I am sending this mail to make you know that you didn't",
                      starred: true),
                  ItemView(
                      username: "Anoty Start",
                      userAvatar:
                      "assets/uihub/gmail_ui/p2.jpg",
                      avatarColor: Colors.greenAccent,
                      subject: "Freshworl",
                      timeAgo: "Aug 23",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Joan Louji",
                      userAvatar:
                      "assets/uihub/gmail_ui/p4.jpg",
                      avatarColor: Colors.yellow,
                      subject: "(no subject)",
                      timeAgo: "Aug 23",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body: "no Body",
                      starred: false),
                  ItemView(
                      username: "Rion",
                      userAvatar: null,
                      avatarColor: Colors.redAccent,
                      subject: "me, Mail",
                      timeAgo: "Aug 21",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Address not Found",
                      starred: true),
                  ItemView(
                      username: "Louji",
                      userAvatar: null,
                      avatarColor: Colors.orangeAccent,
                      subject: "Twitter",
                      timeAgo: "Aug 20",
                      seen: true,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Verification sent",
                      starred: false),
                  ItemView(
                      username: "Racheal",
                      userAvatar:
                      "assets/uihub/gmail_ui/p5.jpg",
                      avatarColor: Colors.blue,
                      subject: "Hangout Chat",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Chats Archieve",
                      starred: false),
                  ItemView(
                      username: "Isac",
                      userAvatar: null,
                      avatarColor: Colors.greenAccent,
                      subject: "Intern Chat",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Chat with us. visit this mail",
                      starred: true),
                  ItemView(
                      username: "Johanna",
                      userAvatar:
                      "assets/uihub/gmail_ui/p6.jpg",
                      avatarColor: Colors.yellow,
                      subject: "Status of your Job Application",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "We have updated your status of Job Applicationn",
                      starred: false),
                  ItemView(
                      username: "Freshers",
                      userAvatar: null,
                      avatarColor: Colors.redAccent,
                      subject: "me, Susmithani",
                      timeAgo: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "Hi, I am sending this mail to make you know that you didn't",
                      starred: false),
                  ItemView(
                      username: "UGC",
                      userAvatar:
                      "assets/uihub/gmail_ui/p7.jpeg",
                      avatarColor: Colors.orangeAccent,
                      subject: "Plus",
                      timeAgo: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body: "DB Config",
                      starred: false),
                  ItemView(
                      username: "Alka University",
                      userAvatar:
                      "assets/uihub/gmail_ui/p2.jpg",
                      avatarColor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Find me",
                      userAvatar:
                      "assets/uihub/gmail_ui/p3.jpg",
                      avatarColor: Colors.greenAccent,
                      subject:
                      "Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "hacker earth",
                      userAvatar: null,
                      avatarColor: Colors.yellow,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: true),
                  ItemView(
                      username: "Tony Start",
                      userAvatar: null,
                      avatarColor: Colors.redAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Spidy",
                      userAvatar:
                      "assets/uihub/gmail_ui/p1.jpg",
                      avatarColor: Colors.orangeAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Rion Louji",
                      userAvatar: null,
                      avatarColor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Joan Louji",
                      userAvatar:
                      "assets/uihub/gmail_ui/p5.jpg",
                      avatarColor: Colors.greenAccent,
                      subject: "Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: true),
                  ItemView(
                      username: "Anntony",
                      userAvatar: null,
                      avatarColor: Colors.yellow,
                      subject:
                      "Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer",
                      timeAgo: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                ],
              ).expanded(),
            ],
          ),
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
