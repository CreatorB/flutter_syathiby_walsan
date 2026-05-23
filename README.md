# Syathiby Walsan

An application for parents to monitor their child's progress in Ma'had Tahfiz Al-Quran Al-Imam Asy-Syathiby.

## Environment

URL configuration is managed at **build time** via `--dart-define=FLAVOR=local|prod`.
Only secrets (e.g. `MAPS_API_KEY`) live in the `.env` file.

| Flavor  | `FlavorConfig.apiUrl`                          | `FlavorConfig.mainUrl`              |
|---------|------------------------------------------------|-------------------------------------|
| `prod`  | `https://aplikasi.syathiby.id/geten/`          | `https://aplikasi.syathiby.id`      |
| `local` | `http://192.168.50.100/aplikasi/geten/`        | `http://192.168.50.100/aplikasi`    |

> **Default**: if `--dart-define=FLAVOR` is omitted, `prod` is used automatically.

Saat app berjalan dengan flavor `local`, banner 🔴 **LOCAL** muncul di pojok kanan atas sebagai penanda. Pada flavor `prod` tidak ada banner – tampilan bersih.

### `.env` setup (secrets only)

```sh
# Copy the example and fill it in:
cp .env.example .env
```

`.env` hanya perlu berisi:
```
MAPS_API_KEY=your_google_maps_api_key_here
```

File referensi per environment tersedia di `.env.local` dan `.env.prod`.

---

## Run & Build per Environment

### ▶ Run – Android device (USB / ADB WiFi)

```sh
# Production
fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=prod

# Local (server jaringan lokal 192.168.50.100)
fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=local
```

### ▶ Run – Emulator / Chrome / Windows

```sh
# Lihat daftar device yang tersedia:
fvm flutter devices

# Jalankan ke device tertentu (ganti <device-id>):
fvm flutter run -d <device-id> --dart-define=FLAVOR=prod
fvm flutter run -d <device-id> --dart-define=FLAVOR=local

# Contoh Chrome:
fvm flutter run -d chrome --dart-define=FLAVOR=local

# Contoh Windows desktop:
fvm flutter run -d windows --dart-define=FLAVOR=local
```

### 📦 Build APK

```sh
# Production
fvm flutter build apk --release --dart-define=FLAVOR=prod

# Local (untuk testing internal)
fvm flutter build apk --release --dart-define=FLAVOR=local
```

### 📦 Build App Bundle (Play Store)

```sh
fvm flutter build appbundle --release --dart-define=FLAVOR=prod
```

### ⚡ Hard Dev (clean + get + codegen + run)

```sh
# Production
fvm flutter clean ; fvm flutter pub get ; fvm flutter pub run build_runner build --delete-conflicting-outputs ; fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=prod

# Local
fvm flutter clean ; fvm flutter pub get ; fvm flutter pub run build_runner build --delete-conflicting-outputs ; fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=local
```

### 🛠 VS Code Launch Configuration

Tambahkan ke `.vscode/launch.json` untuk run langsung dari VS Code:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Walsan – PROD",
      "request": "launch",
      "type": "dart",
      "args": ["--dart-define=FLAVOR=prod"]
    },
    {
      "name": "Walsan – LOCAL",
      "request": "launch",
      "type": "dart",
      "args": ["--dart-define=FLAVOR=local"]
    }
  ]
}
```

Setelah itu pilih konfigurasi dari dropdown Run & Debug di VS Code (F5).

---
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

Build source code (clean slate) :

```sh
fvm flutter clean ; fvm flutter pub get ; fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

Regenerate model / env files only:

```sh
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

> Untuk perintah **run** dan **build APK** per environment, lihat bagian [Run & Build per Environment](#-run--build-per-environment) di atas.

## Quick Start (Ringkas)

```sh
fvm use 3.24.3
cp .env.example .env          # isi MAPS_API_KEY
fvm flutter pub get
fvm flutter pub run build_runner build --delete-conflicting-outputs

# Run LOCAL
fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=local

# Run PROD
fvm flutter run -d 127.0.0.1:5555 --dart-define=FLAVOR=prod
```

## Standar Perintah

- Gunakan prefiks `fvm` untuk seluruh perintah Flutter.
- Hindari menjalankan `flutter ...` langsung agar versi SDK tetap konsisten di semua mesin developer.

## Catatan Integrasi dengan Backend

- Project ini (Walsan) terpisah dari app staff (`flutter_syathiby`).
- Fitur absensi staff berbasis Wi-Fi (validasi IP `103.178.146.98`) diimplementasikan pada app staff + endpoint attendance backend.
- Jika ada kebutuhan menampilkan status absensi terbaru di Walsan, pastikan endpoint API yang dipanggil sudah mengacu ke backend versi terbaru.
- **Session wali**: `loginwali.php` generate `id_session` unik (random) per santri, bukan satu session bersama. Switching santri di home screen mengupdate session key ke `id_session` santri yang dipilih.
- **Backend endpoints baru** (wajib ada di server):
  - `settings/updateaccountwali.php` – update profil wali
  - `settings/updatepasswordwali.php` – ganti password wali
  - `kesehatan/confirm.php` – konfirmasi data kesehatan santri


## Troubleshooting Umum

- **Build runner konflik output**
    - Jalankan: `fvm flutter pub run build_runner build --delete-conflicting-outputs`
- **Versi SDK tidak sesuai tim**
    - Jalankan: `fvm use 3.24.3`
- **build_runner gagal karena `custom_lint` / `_macros` SDK conflict**
    - Known issue: `custom_lint ^0.6.7` tidak kompatibel dengan versi Dart SDK terbaru.
    - Solusi sementara: update generated file (`*.g.dart`, `*.freezed.dart`) secara manual, atau
      coba `fvm flutter pub run build_runner build --delete-conflicting-outputs` setelah upgrade FVM.
- **App menampilkan URL yang salah (local vs prod)**
    - Pastikan menyertakan `--dart-define=FLAVOR=local` atau `--dart-define=FLAVOR=prod` saat run / build.
    - Tanpa flag, default ke `prod`.


## Customize

You can customize the app with your own desired assets by replacing text or file.

*Rename App and Package name*

```sh
dart run flutter_application_id:main -f flutter_application_id.yaml
```

**Change Splash Screen**

Splash screen dikonfigurasi di `pubspec.yaml` pada bagian `flutter_native_splash:`.

**Konfigurasi saat ini:**
- Background: hitam (`#000000`) untuk light & dark mode
- Gambar: `assets/images/syathiby_splash_1152.png` (logo hijau di atas background putih rounded corners)
- Branding: `assets/images/android-12-branding-dark.png` (teks putih, untuk kontras dengan background hitam)
- Web splash: aktif (`web: true`)

```sh
# Regenerate splash setelah mengubah konfigurasi atau gambar
fvm dart run flutter_native_splash:create
```

*Change App Icon*

```sh
#generate
dart run flutter_launcher_icons:generate
#override existing config
dart run flutter_launcher_icons:generate -o
#override default config location
dart run flutter_launcher_icons:generate -f <your config file name here>
#run / run existing config
fvm flutter clean ; fvm flutter pub get ; fvm flutter pub run flutter_launcher_icons
#force
fvm flutter clean ; fvm flutter pub get ; fvm flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
```

## Keystore

**Debug**

```sh
keytool -genkeypair -v `
  -keystore debug.keystore `
  -alias androiddebugkey `
  -keyalg RSA -keysize 2048 `
  -validity 10000 `
  -storetype pkcs12 `
  -storepass android `
  -keypass android `
  -dname "CN=https://github.com/CreatorB, O=Freelance Fullstack Developer, C=ID"
```

**Release**

```sh
keytool -list -v -keystore .\keystore\creatorbe-bundle.jks -alias creatorbe -storepass bismillah -keypass bismillah
```

## Git

git rm --cached **/*.g.dart
git rm --cached **/*.freezed.dart
git rm --cached **/*.riverpod.dart
git rm -r --cached lib/generated/

## License

Copyright IT Syathiby 2024

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.