import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../uihub/music_player_ui/main.dart' as music_player_ui;
import '../../uihub/request_ad_permission_page_ui/main.dart' as request_ad_permission_page_ui;

final List<Tuple2<String, Widget>> widgets = [
  Tuple2('music_player_ui', music_player_ui.NewView()),
  Tuple2('request_ad_permission_page_ui', request_ad_permission_page_ui.NewView())
];
