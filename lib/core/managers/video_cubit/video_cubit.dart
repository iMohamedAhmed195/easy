import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy/core/change_state.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

class VideoCubit extends Cubit<ChangeState> {
  VideoPlayerController? videoPlayerController;

  VideoCubit() : super(ChangeState(value: false));
  init(String url) {
    if (kDebugMode) {
      log("video is $url");
    }
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        emit(ChangeState(value: true));
        if (kDebugMode) {
          log("viiiiiiiiiiiiideo is loaded");
        }
      });
  }
}
