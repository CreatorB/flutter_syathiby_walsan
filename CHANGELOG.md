# Changelog

All notable changes to **Walsan Syathiby** (Parent Portal) will be documented in this file.

Format: `[version] – date`  
Sections: **Added · Changed · Fixed · Removed**

---

## [Unreleased] – 2026-03-15

### Changed
- **Splash Screen Redesign**: Tampilan splash screen diperbarui untuk semua platform
  - Background splash diubah dari putih (#FFFFFF) ke hitam (#000000) untuk light & dark mode
  - Gambar splash diganti ke `syathiby_splash_1152.png` (logo hijau gradient di atas background putih dengan rounded corners)
  - Branding image diganti ke versi dark (teks putih) agar terlihat di background hitam
  - Android 12 splash juga diperbarui dengan gambar dan warna yang konsisten
  - Tampilan lebih modern dan selaras dengan app staff (`flutter_syathiby`)

### Technical Details
- **File yang Dimodifikasi**:
  - `pubspec.yaml`: `color`/`color_dark` → `#000000`, image → `syathiby_splash_1152.png`, branding → versi dark
  - `assets/images/syathiby_splash_1152.png`: File baru (disalin dari flutter_syathiby)
  - Android splash resources: Semua drawable di-regenerate
  - iOS splash resources: Di-regenerate
  - Web splash: Di-regenerate (CSS + gambar)
- **Perintah Regenerasi**: `fvm dart run flutter_native_splash:create`

---

## [Unreleased] – 2026-03-05

### Added
- **`FlavorConfig`** (`lib/res/flavor_config.dart`) – compile-time environment switching via
  `--dart-define=FLAVOR=local|prod`. Provides `apiUrl`, `mainUrl`, `isLocal`, `isProd`, `flavorName`.
- **`.env.local`** – reference file documenting local/dev environment values.
- **`.env.prod`** – reference file documenting production environment values.
- **`settings/updateaccountwali.php`** – new backend endpoint to update wali (parent) profile
  (name, address, email, optional photo upload).
- **`settings/updatepasswordwali.php`** – new backend endpoint to change wali password with old-password
  verification and `md5` hashing.
- **`kesehatan/confirm.php`** – new backend endpoint to confirm/reject student health records;
  supports both staff (`users.id_session`) and wali (`siswa.id_session`) sessions, with
  push-notification dispatch to the wali.
- **`User.namaSiswa`** field (`@JsonKey(name: 'nama_siswa')`) added to the User model so the
  student's own name is available separately from `fullName` (which is the wali's name).

### Changed
- **Environment architecture** – URL configuration (`BASE_URL`, `MAIN_URL`) moved from `.env`
  (envied-generated) to `FlavorConfig` (compile-time `--dart-define`). Only `MAPS_API_KEY`
  remains in `.env`.
- `lib/res/strings.dart` – all URL constants now reference `FlavorConfig.apiUrl` /
  `FlavorConfig.mainUrl` instead of `Env.baseUrl` / `Env.mainUrl`.
- `lib/app.dart` – environment detection now uses `FlavorConfig.isLocal` and `FlavorConfig.flavorName`
  instead of the manual `_isLocalEnvironment(url)` helper (removed).
- `lib/di/providers.dart` – Dio `baseUrl` now sourced from `FlavorConfig.apiUrl`.
- `lib/res/env.dart` – stripped to `mapsApiKey` only.
- **`profile/loginwali.php`** – each student under a wali now gets a **unique, cryptographically
  random** `id_session` (`bin2hex(random_bytes(16))`) on login instead of a single shared session.
- **`profile/dataaccountwali.php`** – response now correctly separates wali data (`full_name`,
  `email`, `img_parent`, `name_parent`, `email_parent`) from student data (`nama_siswa`, `img`).
- **`siswa/tambahakunsantri.php`** – new students are assigned a secure unique session
  (`bin2hex(random_bytes(16))`) instead of the predictable `md5($id_siswa)`.
- `.env.example` updated to reflect the new minimal structure (secrets only).

### Fixed
- **`account_screen.dart`** – was sending `currentUser.token` (always `null`) as the API session
  key; now correctly sends `currentUser.key`.
- **`account_screen.dart`** – profile form pre-fill was using always-null `nameParent` /
  `emailParent` / `imageParent` fields; now falls back to `fullName` / `email` / `img` correctly.
- **`change_password_screen.dart`** – was sending `currentUser.token` instead of `currentUser.key`.
- **`student_card_screen.dart`** – was displaying the wali's name (`profile?.fullName`) on the
  student card; now displays the student's own name via `profile?.namaSiswa ?? profile?.fullName`.
- **`holiday_screen.dart`** – navigation was passing `queryParameters: {'eventName': ...}` which
  does not match the router parameter; corrected to `{'name': ...}`.
- **`add_permit_screen.dart`** – `RefreshIndicator.onRefresh` was calling the API with
  `type: 'staff'`; corrected to `type: 'santri'`.
- **`user.freezed.dart` / `user.g.dart`** – manually updated generated files to include the new
  `namaSiswa` field (build_runner blocked by `custom_lint` SDK dependency conflict).

---

## [1.0.0] – 2024-xx-xx

- Initial release of Walsan Syathiby parent portal.
