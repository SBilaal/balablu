<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A totally useful Flutter package for generating random Balablu sounds.

## Overview

The **balablu** package provides a simple way to generate random Balablu sounds in your Flutter application (very crucial stuff for your app you know. Absolutely not useless🙃.). It also lets you control the frequency at which the audio clip is played and provides an option to disable the sound by shaking the device (nifty, that.😌).


## Usage

On Android, inlcude the VIBRATE permission in AndroidManifest.xml:
```xml
<uses-permission android:name="android.permission.VIBRATE"/>
```


Import the **balablu** package:

```dart
import 'package:balablu/balablu.dart';
```

Initialize Balablu sound generation:

```dart
await Balablu.init();
```

This will initialize the Balablu sound generator with the default settings. The audio clip will be played at a very low frequency.

You can customize the frequency using the `Frequency` class. The smaller the frequency value, the fewer times the audio clip is played. The `Frequencies` class provides some predefined frequency constants:

* `Frequencies.veryLow`
* `Frequencies.low`
* `Frequencies.medium`
* `Frequencies.high`
* `Frequencies.veryHigh`

You can also pass a `Frequency` object to the `init()` method to set a custom frequency:

```dart
// That's really low by the way.
await Balablu.init(frequency: Frequency(milliHertz: 2));
```

By default, shaking the device will toggle the sound on or off. When the device is shook, it vibrates for one second to indicate disabling, and half a second to indicate enabling. 

If you want to disable this feature, you can set the `shakeToDisable` parameter to `false`:

```dart
await Balablu.init(shakeToDisable: false);
```

## Contribution
Contributions to the **balablu** package are welcome! If you find any issues, have suggestions for improvements, or would like to add new features, feel free to contribute. Here's how you can get involved:

1. Fork the repository on GitHub.
2. Create a new branch with a descriptive name for your feature or bug fix.
3. Make your changes and ensure that the code follows the project's style guidelines.
4. Write tests to cover your changes and ensure that existing tests pass.
5. Commit your changes and push the branch to your forked repository.
6. Submit a pull request to the main repository, describing your changes in detail.

Please ensure that your pull request adheres to the following guidelines:

* Provide a clear and descriptive title for your pull request.
* Include a detailed description of the changes you have made.
* If your pull request addresses an existing issue, reference it in the description using the **#issue_number** format.
* Ensure that your code is well-documented, follows best practices, and is properly formatted.
* Include relevant tests for the changes you have made.

By contributing to the **balablu** package, you agree that your contributions will be licensed under the project's [LICENSE]([https://](https://github.com/SBilaal/balablu/blob/main/LICENSE)).

Thank you for your interest in improving the **balablu** package! Your contributions are greatly appreciated.

This is what happens when you can just generate stuff with ChatGPT 😄😄.


## License
This package is licensed under the BSD-2 License. See the [LICENSE](https://github.com/SBilaal/balablu/blob/main/LICENSE) file for more details.

## Issues and Feedback
Please file [issues](https://github.com/SBilaal/balablu/issues) to send feedback or report a bug. Thank you!
