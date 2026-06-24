import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_update.g.dart';
part 'app_update.freezed.dart';

enum AppPlatform {
  @JsonValue('ANDROID')
  android,
  @JsonValue('IOS')
  ios,
}

@freezed
sealed class AndroidAppUpdateVo with _$AndroidAppUpdateVo {
  const factory AndroidAppUpdateVo({
    required int id,
    required String appName,
    String? iconUrl,
    required String version,
    required int buildNum,
    required AppPlatform platform,
    required String packageName,
    required String fileName,
    required int packageSize,
    String? downloadUrl,
    String? updateLog,
    required bool forceUpdate,
    required String createdAt,
    required String updatedAt,
  }) = _AndroidAppUpdateVo;

  factory AndroidAppUpdateVo.fromJson(Map<String, dynamic> json) =>
      _$AndroidAppUpdateVoFromJson(json);
}

@freezed
sealed class IosAppUpdateVo with _$IosAppUpdateVo {
  const factory IosAppUpdateVo({
    required String appName,
    required String version,
    required int buildNum,
    required AppPlatform platform,
    required String packageName,
    String? updateLog,
    String? appUrl,
  }) = _IosAppUpdateVo;

  factory IosAppUpdateVo.fromJson(Map<String, dynamic> json) =>
      _$IosAppUpdateVoFromJson(json);
}

@freezed
sealed class AppUpdateResult with _$AppUpdateResult {
  const factory AppUpdateResult({
    bool? hasUpdate,
    AndroidAppUpdateVo? androidUpdate,
    IosAppUpdateVo? iosUpdate,
  }) = _AppUpdateResult;

  factory AppUpdateResult.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateResultFromJson(json);
}