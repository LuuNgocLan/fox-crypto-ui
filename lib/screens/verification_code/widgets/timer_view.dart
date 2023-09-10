import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_constants.dart';
import 'package:fox_crypto_ui/config/app_typography.dart';

class TimerView extends StatefulWidget {
  final VoidCallback onCompleted;
  final bool startCountdown;

  const TimerView({
    super.key,
    required this.onCompleted,
    this.startCountdown = true,
  });

  @override
  State<StatefulWidget> createState() {
    return _TimerView();
  }
}

class _TimerView extends State<TimerView> {
  int second = AppConstants.WAITING_SECONDS_TIME;

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (!mounted) {
          return;
        }
        setState(
          () {
            if (widget.startCountdown) {
              if (second == 0) {
                second = AppConstants.WAITING_SECONDS_TIME;
                widget.onCompleted();
              } else {
                second--;
              }
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      secondsToMinuteAndSeconds(second),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontFamily: AppTypography.poppinsMedium,
            color: AppColors.placeHolder,
          ),
    );
  }

  String secondsToMinuteAndSeconds(int timeInput) {
    int mins = Duration(seconds: timeInput).inMinutes;
    final seconds = timeInput % 60;
    return "${mins.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    super.dispose();
  }
}
