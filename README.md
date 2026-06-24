# maple_app_update

A reusable Flutter app update library with Riverpod providers.

## Features

- App update checking via API
- Android in-app update using `flutter_app_update`
- iOS App Store redirection
- Default UI dialogs with customization support
- Riverpod-based state management

## Getting Started

### Installation

Add this to your package's `pubspec.yaml` file:

**Using git:**

```yaml
dependencies:
  maple_app_update:
    git: https://github.com/Robert-Ro/maple_flutter_app_update.git
```

**Pin to a specific commit / tag / branch:**

```yaml
dependencies:
  maple_app_update:
    git:
      url: https://github.com/Robert-Ro/maple_flutter_app_update.git
      ref: v1.0.0 # tag, branch name, or commit hash
```

**Using path (for local development):**

```yaml
dependencies:
  maple_app_update:
    path: /path/to/maple_app_update
```

### Usage

#### 1. Provide API Call Implementation

First, provide your API call implementation:

```dart
final myAppUpdateApiProvider = Provider<AppUpdateApiCall>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return (packageName, platform, version, buildNum) async {
    final result = await apiService?.post(
      '/api/app-packages/app/check-update',
      data: {
        'packageName': packageName,
        'platform': platform,
        'version': version,
        'buildNum': buildNum,
      },
    );
    return result?.data;
  };
});
```

#### 2. Override the Provider

```dart
void main() {
  runApp(
    ProviderScope(
      overrides: [
        appUpdateApiCallProvider.overrideWithProvider(myAppUpdateApiProvider),
      ],
      child: const MyApp(),
    ),
  );
}
```

#### 3. Check for Updates

```dart
final updateResult = await ref.read(checkAppUpdateProvider.future);
```

#### 4. Install Update

```dart
// Android
await ref.read(installAndroidProvider(appUpdate).future);

// iOS
await ref.read(installIosProvider(appUpdate).future);
```

### UI Components

The package provides default UI components that can be customized:

```dart
// Show update dialog
showDialog(
  context: context,
  builder: (context) => MapleUpdateDialog(
    newVersion: '1.1.0',
    currentVersion: '1.0.0',
    updateLog: '- Bug fixes\n- New features',
    onLater: () => Navigator.pop(context),
    onUpdateNow: () {
      Navigator.pop(context);
      // Handle update
    },
    accentColor: Colors.blue,
  ),
);
```

### Custom Dialog Builders

You can also provide custom dialog builders for full customization:

```dart
UpdateDialogBuilder myCustomDialogBuilder = (context, newVersion, currentVersion, updateLog, onLater, onUpdateNow) {
  return MyCustomUpdateDialog(
    newVersion: newVersion,
    currentVersion: currentVersion,
    // ...
  );
};
```

## Providers

| Provider                   | Description                                  |
| -------------------------- | -------------------------------------------- |
| `checkAppUpdateProvider`   | Checks for app updates                       |
| `installAndroidProvider`   | Installs Android APK                         |
| `installIosProvider`       | Opens iOS App Store                          |
| `openStoreUrlProvider`     | Opens URL in external browser                |
| `isVersionNewerProvider`   | Compares version strings                     |
| `appUpdateApiCallProvider` | API call implementation (must be overridden) |

## Models

- `AppUpdateResult` - Update check result
- `AndroidAppUpdateVo` - Android update info
- `IosAppUpdateVo` - iOS update info
- `AppPlatform` - Platform enum

## License

MIT
