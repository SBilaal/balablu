library balablu;

import 'dart:math';

import 'package:audioplayers/audioplayers.dart';

/// Determines how often in a seconds an event occurs
class Frequency {
  const Frequency({required this.milliHertz});

  /// The smaller the number, the lower the frequency. I.e the audio clip sounds less often. 
  final int milliHertz;
}

class Frequencies {
  Frequencies._();
  static const Frequency veryLow = Frequency(milliHertz: 10);
  static const Frequency low = Frequency(milliHertz: 20);
  static const Frequency medium = Frequency(milliHertz: 50);
  static const Frequency high = Frequency(milliHertz: 100);
  static const Frequency veryHigh = Frequency(milliHertz: 200);
}

extension FrequencyToSeconds on int {
  int get sec => (1000 / this).round();
}

class Balablu {
  static const _expectedNum = 1;

  static Future<void> init({
    Frequency frequency = Frequencies.veryLow,
  }) async {
    final player = AudioPlayer();
    // int count = 0;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 1000));
      var randomNum = Random().nextInt(frequency.milliHertz.sec - 1) + 1;

      if (randomNum != _expectedNum) {
        continue;
      }
      // count++;
      // print("Balablue: $count");
      await player.play(AssetSource('balablu.mp3'));

      //Lets the audio play completely before starting the next loop.
      await Future.delayed(const Duration(milliseconds: 5000));
    }
  }
}
