import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CronoController extends GetxController {
  final _stopwatch = StopWatchTimer(mode: StopWatchMode.countUp);
  var raw = 0.obs;

  void setRaw() {
    raw.value = _stopwatch.rawTime.value;
  }

  get stopwatch => _stopwatch;

  void start() => _stopwatch.onExecute.add(StopWatchExecute.start);
}
