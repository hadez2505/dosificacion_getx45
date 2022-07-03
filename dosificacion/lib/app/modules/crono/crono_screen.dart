import 'package:dosificacion/app/modules/crono/crono_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CronoScreen extends StatelessWidget {
  const CronoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Crono Screen'))),
      body: GetBuilder<CronoController>(builder: (_) {
        return StreamBuilder<int>(
          stream: _.stopwatch.rawTime,
          initialData: _.stopwatch.rawTime.value,
          builder: (context, snap) {
            final value = snap.data!;
            final displayTime =
                StopWatchTimer.getDisplayTime(value, hours: true);
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    displayTime,
                    style: const TextStyle(
                        fontSize: 40,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    value.toString(),
                    style: const TextStyle(
                        fontSize: 35,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                TextButton(
            onPressed: () => _.stopwatch.onExecute.add(StopWatchExecute.start),
            child: Text('Start'))
              ],
            );
          },
        );
        ;
      }),
    );
  }
}
