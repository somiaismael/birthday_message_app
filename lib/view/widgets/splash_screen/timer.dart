import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Timer extends StatelessWidget {
  final Function()? onEnd;
  const Timer({super.key, this.onEnd});

  @override
  Widget build(BuildContext context) {
    //  Duration diff=getData();

    return  Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TimerCountdown(
                    timeTextStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    colonsTextStyle: TextStyle(fontWeight: FontWeight.bold),
                    descriptionTextStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    format: CountDownTimerFormat.daysHoursMinutesSeconds,
                    endTime: DateTime.now().add(
                       Duration(days: 0, hours:0,
                       minutes:0, seconds: 5),
                       // with getData "function" & diff "variable"
                      // Duration(days: diff.inDays, hours: diff.inHours.remainder(24),
                      //  minutes:diff.inMinutes.remainder(60) , seconds: diff.inSeconds.remainder(60)),
                    ),
                    onEnd:onEnd
                  ),
                );
  }
}

// Duration getData(){
//   DateTime spacifidTime=DateTime(2025,8,9,0,0,0,6);
//     DateTime currentTime=DateTime.now();
//     return spacifidTime.difference(currentTime);
// }