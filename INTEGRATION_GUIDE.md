# maple_app_update 集成指南

## 概述

本文档描述了如何在 Flutter 项目中集成 `maple_app_update` Package，实现应用内更新功能。

## Package 信息

- **名称**: maple_app_update
- **版本**: 1.0.0
- **位置**: `C:\Users\Administrator\Code\walle\maple_app_update`
- **依赖**: Riverpod 2.x, Flutter 3.10+

## 快速开始

### 1. 添加依赖

在项目的 `pubspec.yaml` 中添加：

```yaml
dependencies:
  maple_app_update:
    path: C:/Users/Administrator/Code/walle/maple_app_update
```

### 2. 创建 API 调用 Provider

创建文件 `lib/features/users/providers/app_update_api.dart`：

```dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maple_app_update/maple_app_update.dart';

import '../../../services/http/api_service.dart';
import '../../../services/http/refreshing.dart';

final appUpdateApiCallProvider = Provider<AppUpdateApiCall>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return (packageName, platform, version, buildNum) async {
    return await autoRefreshTokenReq<Map<String, dynamic>?>(
      ref,
      (service) => service.post(
        '/api/app-packages/app/check-update',
        data: {
          'packageName': packageName,
          'platform': platform,
          'version': version,
          'buildNum': buildNum,
        },
        fromJsonT: (json) => json as Map<String, dynamic>,
      ),
      apiService!,
    );
  };
});
```

### 3. 配置 ProviderScope

在 `main.dart` 中配置 Provider override：

```dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maple_app_update/maple_app_update.dart' as maple;

import 'features/users/providers/app_update_api.dart';
import 'app.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        maple.appUpdateApiCallProvider.overrideWith(
          (ref) => ref.watch(appUpdateApiCallProvider),
        ),
      ],
      child: const App(),
    ),
  );
}
```

### 4. 使用更新功能

在需要检查更新的地方调用：

```dart
import 'package:maple_app_update/maple_app_update.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> checkAndShowUpdate(WidgetRef ref, BuildContext context) async {
  final updateResult = await ref.read(checkAppUpdateProvider.future);
  
  if (updateResult?.hasUpdate == true) {
    // 显示更新弹窗
    showDialog(
      context: context,
      builder: (context) => MapleUpdateDialog(
        newVersion: updateResult!.iosUpdate?.version ?? updateResult.androidUpdate?.version ?? '',
        currentVersion: '1.0.0',
        updateLog: updateResult.iosUpdate?.updateLog ?? updateResult.androidUpdate?.updateLog,
        onLater: () => Navigator.pop(context),
        onUpdateNow: () async {
          Navigator.pop(context);
          if (updateResult.iosUpdate != null) {
            await ref.read(installIosProvider(updateResult.iosUpdate!).future);
          } else if (updateResult.androidUpdate != null) {
            await ref.read(installAndroidProvider(updateResult.androidUpdate!).future);
          }
        },
      ),
    );
  }
}
```

## 核心 Providers

| Provider | 返回类型 | 功能说明 |
|----------|----------|----------|
| `checkAppUpdateProvider` | `Future<AppUpdateResult?>` | 检查是否有新版本 |
| `installAndroidProvider` | `Future<bool>` | Android 应用内安装 |
| `installIosProvider` | `Future<bool>` | iOS 跳转 App Store |
| `openStoreUrlProvider` | `Future<bool>` | 打开外部 URL |
| `isVersionNewerProvider` | `bool` | 版本号比较 |

## 数据模型

### AppUpdateResult

```dart
@freezed
sealed class AppUpdateResult with _$AppUpdateResult {
  const factory AppUpdateResult({
    bool? hasUpdate,
    AndroidAppUpdateVo? androidUpdate,
    IosAppUpdateVo? iosUpdate,
  }) = _AppUpdateResult;
}
```

### AndroidAppUpdateVo

```dart
@freezed
sealed class AndroidAppUpdateVo with _$AndroidAppUpdateVo {
  const factory AndroidAppUpdateVo({
    required int id,
    required String appName,
    required String version,
    required int buildNum,
    required String packageName,
    required String fileName,
    required int packageSize,
    String? downloadUrl,
    String? updateLog,
    required bool forceUpdate,
    // ... 其他字段
  }) = _AndroidAppUpdateVo;
}
```

### IosAppUpdateVo

```dart
@freezed
sealed class IosAppUpdateVo with _$IosAppUpdateVo {
  const factory IosAppUpdateVo({
    required String appName,
    required String version,
    required int buildNum,
    required String packageName,
    String? updateLog,
    String? appUrl,
  }) = _IosAppUpdateVo;
}
```

## UI 组件

### 默认弹窗组件

| 组件 | 用途 |
|------|------|
| `MapleUpdateDialog` | 更新提示弹窗 |
| `MapleNoUpdateDialog` | 无更新提示 |
| `MapleLoadingDialog` | 加载弹窗 |
| `MapleDownloadingDialog` | 下载进度弹窗 |
| `MapleErrorDialog` | 错误提示弹窗 |

### 使用默认组件

```dart
showDialog(
  context: context,
  builder: (context) => MapleUpdateDialog(
    newVersion: '1.1.0',
    currentVersion: '1.0.0',
    updateLog: '- Bug fixes\n- New features',
    onLater: () => Navigator.pop(context),
    onUpdateNow: () {
      Navigator.pop(context);
      // 执行更新
    },
    accentColor: Colors.blue, // 自定义主题色
  ),
);
```

### 自定义弹窗

实现 `UpdateDialogBuilder` 类型：

```dart
UpdateDialogBuilder customDialogBuilder = (
  context,
  newVersion,
  currentVersion,
  updateLog,
  onLater,
  onUpdateNow,
) {
  return MyCustomDialog(
    newVersion: newVersion,
    currentVersion: currentVersion,
    onLater: onLater,
    onUpdateNow: onUpdateNow,
  );
};
```

## 完整集成示例

### 示例：用户页面集成

```dart
class UserScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _checkUpdate(context, ref),
          child: const Text('检查更新'),
        ),
      ),
    );
  }

  Future<void> _checkUpdate(BuildContext context, WidgetRef ref) async {
    // 显示加载弹窗
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const MapleLoadingDialog(),
    );

    try {
      final result = await ref.read(checkAppUpdateProvider.future);
      Navigator.pop(context); // 关闭加载弹窗

      if (result?.hasUpdate == true) {
        _showUpdateDialog(context, ref, result!);
      } else {
        showDialog(
          context: context,
          builder: (_) => MapleNoUpdateDialog(
            onOk: () => Navigator.pop(context),
          ),
        );
      }
    } catch (e) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (_) => MapleErrorDialog(
          errorMessage: '检查更新失败',
          onOk: () => Navigator.pop(context),
        ),
      );
    }
  }

  void _showUpdateDialog(BuildContext context, WidgetRef ref, AppUpdateResult result) {
    showDialog(
      context: context,
      builder: (dialogContext) => MapleUpdateDialog(
        newVersion: result.iosUpdate?.version ?? result.androidUpdate?.version ?? '',
        currentVersion: '1.0.0',
        updateLog: result.iosUpdate?.updateLog ?? result.androidUpdate?.updateLog,
        onLater: () => Navigator.pop(dialogContext),
        onUpdateNow: () async {
          Navigator.pop(dialogContext);
          if (result.iosUpdate != null) {
            await ref.read(installIosProvider(result.iosUpdate!).future);
          } else if (result.androidUpdate != null) {
            await ref.read(installAndroidProvider(result.androidUpdate!).future);
          }
        },
      ),
    );
  }
}
```

## API 接口规范

### 检查更新接口

**请求**:
- **URL**: `POST /api/app-packages/app/check-update`
- **Content-Type**: `application/json`

**请求体**:
```json
{
  "packageName": "com.example.app",
  "platform": "ANDROID",
  "version": "1.0.0",
  "buildNum": 1
}
```

**响应 (Android)**:
```json
{
  "id": 1,
  "appName": "My App",
  "version": "1.1.0",
  "buildNum": 2,
  "platform": "ANDROID",
  "packageName": "com.example.app",
  "fileName": "app-release.apk",
  "packageSize": 10485760,
  "downloadUrl": "https://example.com/app.apk",
  "updateLog": "- New feature\n- Bug fix",
  "forceUpdate": false,
  "createdAt": "2024-01-01T00:00:00Z",
  "updatedAt": "2024-01-01T00:00:00Z"
}
```

**响应 (iOS)**:
```json
{
  "appName": "My App",
  "version": "1.1.0",
  "buildNum": 2,
  "platform": "IOS",
  "packageName": "com.example.app",
  "updateLog": "- New feature",
  "appUrl": "https://apps.apple.com/cn/app/my-app/id123456789"
}
```

## 注意事项

1. **权限配置**:
   - Android: 确保在 `AndroidManifest.xml` 中添加网络权限
   - iOS: 在 `Info.plist` 中配置 App Store 链接白名单

2. **依赖冲突**:
   - 确保项目中已添加 `hooks_riverpod`、`freezed`、`json_annotation` 等依赖

3. **代码生成**:
   - 添加依赖后运行 `fvm dart run build_runner build`

4. **版本兼容性**:
   - Package 使用 Riverpod 2.x，确保项目使用相同版本

## 迁移指南

### 从原有代码迁移

1. **删除原有文件**:
   - `lib/features/users/models/app_update.dart`
   - `lib/features/users/providers/app_update.dart`

2. **更新导入**:
   - 将 `import '../models/app_update.dart'` 改为 `import 'package:maple_app_update/maple_app_update.dart'`

3. **更新 Provider 调用**:
   - 确保使用 Package 中的 providers

## 故障排除

### 常见问题

| 问题 | 解决方案 |
|------|----------|
| `appUpdateApiCallProvider` 为 null | 检查 ProviderScope 中的 override 配置 |
| 依赖解析失败 | 检查 pubspec.yaml 中的路径格式，使用 `/` 而非 `\` |
| `overrideWithProvider` 已弃用 | 使用 `overrideWith` 替代 |
| 代码生成失败 | 运行 `fvm dart run build_runner build --delete-conflicting-outputs` |

## 版本历史

| 版本 | 变更 |
|------|------|
| 1.0.0 | 初始版本，包含基础更新功能 |

## 许可证

MIT License