import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app_update/flutter_app_update.dart';

import '../models/app_update.dart';

part 'app_update.g.dart';

typedef AppUpdateApiCall = Future<Map<String, dynamic>?> Function(
  String packageName,
  String platform,
  String version,
  int buildNum,
);

final appUpdateApiCallProvider = Provider<AppUpdateApiCall?>((ref) => null);

@riverpod
Future<AppUpdateResult?> checkAppUpdate(Ref ref) async {
  final apiCall = ref.watch(appUpdateApiCallProvider);
  if (apiCall == null) {
    return const AppUpdateResult(hasUpdate: false);
  }

  final packageInfo = await PackageInfo.fromPlatform();
  final packageName = packageInfo.packageName;
  final currentVersion = packageInfo.version;
  final currentBuildNum = int.tryParse(packageInfo.buildNumber) ?? 0;

  final platform = Platform.isAndroid ? 'ANDROID' : 'IOS';

  final result =
      await apiCall(packageName, platform, currentVersion, currentBuildNum);

  if (result == null || result.isEmpty) {
    return const AppUpdateResult(hasUpdate: false);
  }

  if (Platform.isAndroid) {
    final androidUpdate = AndroidAppUpdateVo.fromJson(result);
    return AppUpdateResult(hasUpdate: true, androidUpdate: androidUpdate);
  } else {
    final iosUpdate = IosAppUpdateVo.fromJson(result);
    return AppUpdateResult(hasUpdate: true, iosUpdate: iosUpdate);
  }
}

@riverpod
Future<bool> installAndroid(Ref ref, AndroidAppUpdateVo appUpdate) async {
  try {
    if (appUpdate.downloadUrl != null && appUpdate.downloadUrl!.isNotEmpty) {
      final model = UpdateModel(
        appUpdate.downloadUrl!,
        appUpdate.fileName,
        "ic_launcher",
        '',
        showNotification: true,
        showBgdToast: true,
      );
      await AzhonAppUpdate.update(model);
      return true;
    }
    return false;
  } catch (e) {
    if (appUpdate.downloadUrl != null && appUpdate.downloadUrl!.isNotEmpty) {
      final uri = Uri.parse(appUpdate.downloadUrl!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return true;
      }
    }
    return false;
  }
}

@riverpod
Future<bool> installIos(Ref ref, IosAppUpdateVo appUpdate) async {
  if (appUpdate.appUrl != null && appUpdate.appUrl!.isNotEmpty) {
    final uri = Uri.parse(appUpdate.appUrl!);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      return true;
    }
  }
  return false;
}

@riverpod
Future<bool> openStoreUrl(Ref ref, String? url) async {
  if (url == null) return false;

  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
    return true;
  }
  return false;
}

@riverpod
bool isVersionNewer(
  Ref ref, {
  required String localVersion,
  required String storeVersion,
}) {
  try {
    final localParts = localVersion.split('.').map(int.parse).toList();
    final storeParts = storeVersion.split('.').map(int.parse).toList();

    final maxLength = localParts.length > storeParts.length
        ? localParts.length
        : storeParts.length;

    for (int i = 0; i < maxLength; i++) {
      final localPart = i < localParts.length ? localParts[i] : 0;
      final storePart = i < storeParts.length ? storeParts[i] : 0;

      if (storePart > localPart) {
        return true;
      } else if (storePart < localPart) {
        return false;
      }
    }

    return false;
  } catch (e) {
    return storeVersion.compareTo(localVersion) > 0;
  }
}
