# Syathiby Walsan

An application for parent to monitor their child's progress in ma'had tahfiz al-quran al-imam asy-syathiby.

## Requirements

```sh
dart pub global deactivate fvm
dart pub cache clean
dart pub global activate fvm
fvm --version (mine 4.0.1)
fvm list
fvm install 3.24.3
fvm use 3.24.3
fvm flutter pub get
fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter doctor -v
FINE: Pub 3.10.0-287.0.dev
FINE: Package Config up to date.

[√] Flutter (Channel stable, 3.24.3, on Microsoft Windows [Version 10.0.26200.7171], locale en-US)
    • Flutter version 3.24.3 on channel stable at C:\Users\creatorbe\fvm\versions\3.24.3
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 2663184aa7 (1 year, 3 months ago), 2024-09-11 16:27:48 -0500
    • Engine revision 36335019a8
    • Dart version 3.5.3
    • DevTools version 2.37.3

[☠] Windows Version (the doctor check crashed)
    X Due to an error, the doctor check did not complete. If the error message below is not helpful, please let us know about this issue at
      https://github.com/flutter/flutter/issues.
    X Exception: Windows Version exceeded maximum allowed duration of 0:04:30.000000
    • 

[√] Android toolchain - develop for Android devices (Android SDK version 35.0.0)
    • Android SDK at D:\IT\HSN\Developments\android\Sdk
    • Platform android-36, build-tools 35.0.0
    • ANDROID_HOME = D:\IT\HSN\Developments\android\Sdk
    • Java binary at: D:\IT\HSN\Developments\sdk\jdk-17.0.13+11\bin\java
    • Java version OpenJDK Runtime Environment Temurin-17.0.13+11 (build 17.0.13+11)
    • All Android licenses accepted.

[√] Chrome - develop for the web
    • Chrome at C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

[X] Visual Studio - develop Windows apps
    X Visual Studio not installed; this is necessary to develop Windows apps.
      Download at https://visualstudio.microsoft.com/downloads/.
      Please install the "Desktop development with C++" workload, including all of its default components

[√] Android Studio (version 2025.1.3)
    • Android Studio at C:\Program Files\Android\Android Studio
    • Flutter plugin can be installed from:
       https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
       https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 21.0.7+-13880790-b1038.58)

[√] IntelliJ IDEA Community Edition (version 2024.2)
    • IntelliJ at C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.2.2
    • Flutter plugin version 82.0.3
    • Dart plugin version 242.22855.32

[√] VS Code (version 1.106.3)
    • VS Code at C:\Users\creatorbe\AppData\Local\Programs\Microsoft VS Code
    • Flutter extension version 3.122.0

[√] Connected device (4 available)
    • NE2211 (mobile)   • 127.0.0.1:5555 • android-x64    • Android 9 (API 28)
    • Windows (desktop) • windows        • windows-x64    • Microsoft Windows [Version 10.0.26200.7171]
    • Chrome (web)      • chrome         • web-javascript • Google Chrome 142.0.7444.176
    • Edge (web)        • edge           • web-javascript • Microsoft Edge 142.0.3595.94

[√] Network resources
    • All expected network resources are available.
```

## Branches

- [main](https://github.com/creatorb/flutter_syathiby_walsan/tree/main)

This original version built by IT Sragen, we will still support this branch with latest requirements and keep the original features, InshaAllah.

- [dev](https://github.com/creatorb/flutter_syathiby_walsan/tree/dev)

This upgrading version of main branch built by IT Syathiby, we will update this branch with latest requirements and add new features, InshaAllah.

## Development

Build source code :

```sh
fvm flutter clean ; fvm flutter pub get ; fvm flutter packages pub run build_runner build
```

Rebuild model and url env

```sh
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

Build apk :

```sh
fvm flutter clean ; fvm flutter pub get ; fvm flutter build apk --release
```

Run app :

```sh
fvm flutter clean ; fvm flutter pub get ; fvm flutter run -d 127.0.0.1:5555 -v
```

## Customize

You can customize the app with your own desired assets by replacing text or file.

*Rename App and Package name*

dart run flutter_application_id:main -f flutter_application_id.yaml



## Git

git rm --cached **/*.g.dart
git rm --cached **/*.freezed.dart
git rm --cached **/*.riverpod.dart
git rm -r --cached lib/generated/

## License

Copyright IT Syathiby 2024

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.