import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../uihub/uihub_facebook_messager_main_view/main.dart' as uihub_facebook_messager_main_view;
import '../../uihub/uihub_world_time/main.dart' as uihub_world_time;
import '../../uihub/uihub_facebook_home/main.dart' as uihub_facebook_home;
import '../../uihub/weather_page_ui/main.dart' as weather_page_ui;
import '../../uihub/gmail_ui/main.dart' as gmail_ui;
import '../../uihub/music_player_ui/main.dart' as music_player_ui;
import '../../uihub/request_ad_permission_page_ui/main.dart' as request_ad_permission_page_ui;

final List<Tuple2<String, Widget>> widgets = [
  Tuple2('uihub_facebook_messager_main_view', uihub_facebook_messager_main_view.NewView()),
  Tuple2('uihub_world_time', uihub_world_time.NewView()),
  Tuple2('uihub_facebook_home', uihub_facebook_home.NewView()),
  Tuple2('weather_page_ui', weather_page_ui.NewView()),
  Tuple2('gmail_ui', gmail_ui.NewView()),
  Tuple2('music_player_ui', music_player_ui.NewView()),
  Tuple2('request_ad_permission_page_ui', request_ad_permission_page_ui.NewView())
];
