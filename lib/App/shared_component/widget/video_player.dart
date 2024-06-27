// ignore_for_file: depend_on_referenced_packages, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'package:cached_video_player/cached_video_player.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class VideoPLayer extends StatefulWidget {
  const VideoPLayer({Key? key}) : super(key: key);

  @override
  State<VideoPLayer> createState() => _VideoPLayerState();
}

class _VideoPLayerState extends State<VideoPLayer> {
  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = 'lib/App/Constant/Asset/video/learn.mp4';

  @override
  void initState() {
    super.initState();
    initialezeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomVideoPlayer(
          customVideoPlayerController: _customVideoPlayerController),
    );
  }

  void initialezeVideoPlayer() {
    CachedVideoPlayerController _cachedVideoPlayerController;
    _cachedVideoPlayerController =
        CachedVideoPlayerController.asset(assetVideoPath)
          ..initialize().then((value) {
            setState(() {});
          });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }
}
