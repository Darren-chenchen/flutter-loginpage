import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'controls.dart';
import 'full_controls.dart';
import 'hd_player_provider.dart';

class PlayerControls extends StatelessWidget {
  PlayerControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HDVideoPlayerProvider provider = HDVideoPlayerProvider.of(context);

    return provider.isFullScreen ? Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AspectRatio(
          aspectRatio:
          provider.aspectRatio ?? _calculateAspectRatio(context),
          child: _buildPlayerWithControls(provider, context),
        ),
      ),
    ):Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: AspectRatio(
          aspectRatio:
          provider.aspectRatio ?? _calculateAspectRatio(context),
          child: _buildPlayerWithControls(provider, context),
        ),
      ),
    );
  }

  Container _buildPlayerWithControls(
      HDVideoPlayerProvider chewieController, BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          chewieController.placeholder ?? Container(),
          Center(
            child: AspectRatio(
              aspectRatio: chewieController.aspectRatio ??
                  _calculateAspectRatio(context),
              child: VideoPlayer(chewieController.videoPlayerController),
            ),
          ),
          chewieController.overlay ?? Container(),
          _buildControls(context, chewieController),
        ],
      ),
    );
  }

  Widget _buildControls(
      BuildContext context,
      HDVideoPlayerProvider provider,
      ) {
    return provider.showControls
        ? provider.customControls != null
        ? provider.customControls
        : provider.isFullScreen ? FullControls():MaterialControls()
        : Container();
  }

  double _calculateAspectRatio(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return width > height ? width / height : height / width;
  }
}
