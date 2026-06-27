// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AndroidAppUpdateVo _$AndroidAppUpdateVoFromJson(Map<String, dynamic> json) =>
    _AndroidAppUpdateVo(
      id: (json['id'] as num).toInt(),
      appName: json['appName'] as String,
      iconUrl: json['iconUrl'] as String?,
      version: json['version'] as String,
      buildNum: (json['buildNum'] as num).toInt(),
      platform: $enumDecode(_$AppPlatformEnumMap, json['platform']),
      packageName: json['packageName'] as String,
      fileName: json['fileName'] as String,
      packageSize: (json['packageSize'] as num).toInt(),
      downloadUrl: json['downloadUrl'] as String?,
      updateLog: json['updateLog'] as String?,
      forceUpdate: json['forceUpdate'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$AndroidAppUpdateVoToJson(_AndroidAppUpdateVo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appName': instance.appName,
      'iconUrl': instance.iconUrl,
      'version': instance.version,
      'buildNum': instance.buildNum,
      'platform': _$AppPlatformEnumMap[instance.platform]!,
      'packageName': instance.packageName,
      'fileName': instance.fileName,
      'packageSize': instance.packageSize,
      'downloadUrl': instance.downloadUrl,
      'updateLog': instance.updateLog,
      'forceUpdate': instance.forceUpdate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

const _$AppPlatformEnumMap = {
  AppPlatform.android: 'android',
  AppPlatform.ios: 'ios',
};

_IosAppUpdateVo _$IosAppUpdateVoFromJson(Map<String, dynamic> json) =>
    _IosAppUpdateVo(
      appName: json['appName'] as String,
      version: json['version'] as String,
      buildNum: (json['buildNum'] as num).toInt(),
      platform: $enumDecode(_$AppPlatformEnumMap, json['platform']),
      packageName: json['packageName'] as String,
      updateLog: json['updateLog'] as String?,
      appUrl: json['appUrl'] as String?,
    );

Map<String, dynamic> _$IosAppUpdateVoToJson(_IosAppUpdateVo instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'version': instance.version,
      'buildNum': instance.buildNum,
      'platform': _$AppPlatformEnumMap[instance.platform]!,
      'packageName': instance.packageName,
      'updateLog': instance.updateLog,
      'appUrl': instance.appUrl,
    };

_AppUpdateResult _$AppUpdateResultFromJson(Map<String, dynamic> json) =>
    _AppUpdateResult(
      hasUpdate: json['hasUpdate'] as bool?,
      androidUpdate: json['androidUpdate'] == null
          ? null
          : AndroidAppUpdateVo.fromJson(
              json['androidUpdate'] as Map<String, dynamic>),
      iosUpdate: json['iosUpdate'] == null
          ? null
          : IosAppUpdateVo.fromJson(json['iosUpdate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppUpdateResultToJson(_AppUpdateResult instance) =>
    <String, dynamic>{
      'hasUpdate': instance.hasUpdate,
      'androidUpdate': instance.androidUpdate,
      'iosUpdate': instance.iosUpdate,
    };
