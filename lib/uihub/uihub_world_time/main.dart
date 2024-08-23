import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final List<Map<String, String>> _cities = [
    {"city": "New York", "timeOffset": "+3HRS", "time": "12:32 PM"},
    {"city": "Seoul", "timeOffset": "+14HRS", "time": "2:32 AM"},
    {"city": "London", "timeOffset": "+8HRS", "time": "6:32 PM"},
    {"city": "Sydney", "timeOffset": "+17HRS", "time": "3:32 AM"},
    {"city": "Tokyo", "timeOffset": "+13HRS", "time": "1:32 AM"},
    {"city": "Paris", "timeOffset": "+9HRS", "time": "7:32 PM"},
    {"city": "Dubai", "timeOffset": "+11HRS", "time": "9:32 PM"},
    {"city": "Los Angeles", "timeOffset": "0HRS", "time": "9:32 AM"},
    {"city": "Mumbai", "timeOffset": "+12.5HRS", "time": "10:02 PM"},
    {"city": "Moscow", "timeOffset": "+10HRS", "time": "8:32 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuperScaffold(
        onCollapsed: (val) {
          print("collapsed => $val");
        },
        stretch: true,
        appBar: SuperAppBar(
          title: Text(
            "World Clock",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          height: 45,
          automaticallyImplyLeading: true,
          previousPageTitle: "Home",
          actions: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.add,
                color: CupertinoColors.systemOrange,
                size: 27,
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
          leading: GestureDetector(
            onTap: null,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                "Edit",
                style: TextStyle(
                  fontSize: 18,
                  color: CupertinoColors.systemOrange,
                ),
              ),
            ),
          ),
          searchBar: SuperSearchBar(
            // height: 190,
            enabled: false,
            scrollBehavior: SearchBarScrollBehavior.pinned,
            resultBehavior: SearchBarResultBehavior.neverVisible,
          ),
          largeTitle: SuperLargeTitle(
            enabled: true,
            height: 50,
            largeTitle: "World Clock",
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          separatorBuilder: (context, index) => Divider(
            color: CupertinoColors.systemGrey.withOpacity(0.35),
            height: 25,
          ),
          shrinkWrap: true,
          itemCount: _cities.length,
          itemBuilder: (context, index) {
            final city = _cities[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "TODAY, ${city['timeOffset']}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      Text(
                        city['city']!,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                Text(
                  city['time']!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(fontSize: 45),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

@immutable
class AppleClockHeader extends StatelessWidget {
  const AppleClockHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 1.5),
              decoration: BoxDecoration(
                  color: const Color(0xff2f2f37),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.white12,
                    width: 1,
                  )),
              child: const Row(
                children: [
                  Icon(Icons.filter_list),
                  Badge(
                    label: Text(
                      "1",
                      style: TextStyle(
                        color: CupertinoColors.systemBlue,
                      ),
                    ),
                    backgroundColor: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 1,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xff2f2f37),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.white12,
                    width: 1,
                  )),
              child: const Row(
                children: [
                  Text("Open"),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 1,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2f2f37),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white12,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  Text("Created"),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 1,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2f2f37),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white12,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  Text("Visibility"),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 1,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2f2f37),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white12,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  Text("Organization"),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 1,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2f2f37),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white12,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  Text("Repository"),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),
          ],
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
