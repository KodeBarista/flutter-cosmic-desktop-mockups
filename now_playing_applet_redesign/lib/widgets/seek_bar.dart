import 'package:flutter/material.dart';

import '../comp/comp_slider.dart';
import '../data/media_info.dart';

class SeekBar extends StatelessWidget {
  const SeekBar({super.key, required this.media});

  final MediaInfo media;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Text(media.seekTime),
        CompSlider(value: 40),
        Text(media.mediaLength),
      ],
    );
  }
}
