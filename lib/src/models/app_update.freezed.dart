// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AndroidAppUpdateVo {
  int get id;
  String get appName;
  String? get iconUrl;
  String get version;
  int get buildNum;
  AppPlatform get platform;
  String get packageName;
  String get fileName;
  int get packageSize;
  String? get downloadUrl;
  String? get updateLog;
  bool get forceUpdate;
  String get createdAt;
  String get updatedAt;

  /// Create a copy of AndroidAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AndroidAppUpdateVoCopyWith<AndroidAppUpdateVo> get copyWith =>
      _$AndroidAppUpdateVoCopyWithImpl<AndroidAppUpdateVo>(
          this as AndroidAppUpdateVo, _$identity);

  /// Serializes this AndroidAppUpdateVo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AndroidAppUpdateVo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNum, buildNum) ||
                other.buildNum == buildNum) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.packageSize, packageSize) ||
                other.packageSize == packageSize) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.updateLog, updateLog) ||
                other.updateLog == updateLog) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      appName,
      iconUrl,
      version,
      buildNum,
      platform,
      packageName,
      fileName,
      packageSize,
      downloadUrl,
      updateLog,
      forceUpdate,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'AndroidAppUpdateVo(id: $id, appName: $appName, iconUrl: $iconUrl, version: $version, buildNum: $buildNum, platform: $platform, packageName: $packageName, fileName: $fileName, packageSize: $packageSize, downloadUrl: $downloadUrl, updateLog: $updateLog, forceUpdate: $forceUpdate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $AndroidAppUpdateVoCopyWith<$Res> {
  factory $AndroidAppUpdateVoCopyWith(
          AndroidAppUpdateVo value, $Res Function(AndroidAppUpdateVo) _then) =
      _$AndroidAppUpdateVoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String appName,
      String? iconUrl,
      String version,
      int buildNum,
      AppPlatform platform,
      String packageName,
      String fileName,
      int packageSize,
      String? downloadUrl,
      String? updateLog,
      bool forceUpdate,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$AndroidAppUpdateVoCopyWithImpl<$Res>
    implements $AndroidAppUpdateVoCopyWith<$Res> {
  _$AndroidAppUpdateVoCopyWithImpl(this._self, this._then);

  final AndroidAppUpdateVo _self;
  final $Res Function(AndroidAppUpdateVo) _then;

  /// Create a copy of AndroidAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? iconUrl = freezed,
    Object? version = null,
    Object? buildNum = null,
    Object? platform = null,
    Object? packageName = null,
    Object? fileName = null,
    Object? packageSize = null,
    Object? downloadUrl = freezed,
    Object? updateLog = freezed,
    Object? forceUpdate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNum: null == buildNum
          ? _self.buildNum
          : buildNum // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      packageSize: null == packageSize
          ? _self.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as int,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLog: freezed == updateLog
          ? _self.updateLog
          : updateLog // ignore: cast_nullable_to_non_nullable
              as String?,
      forceUpdate: null == forceUpdate
          ? _self.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AndroidAppUpdateVo].
extension AndroidAppUpdateVoPatterns on AndroidAppUpdateVo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AndroidAppUpdateVo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AndroidAppUpdateVo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AndroidAppUpdateVo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String appName,
            String? iconUrl,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String fileName,
            int packageSize,
            String? downloadUrl,
            String? updateLog,
            bool forceUpdate,
            String createdAt,
            String updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo() when $default != null:
        return $default(
            _that.id,
            _that.appName,
            _that.iconUrl,
            _that.version,
            _that.buildNum,
            _that.platform,
            _that.packageName,
            _that.fileName,
            _that.packageSize,
            _that.downloadUrl,
            _that.updateLog,
            _that.forceUpdate,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String appName,
            String? iconUrl,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String fileName,
            int packageSize,
            String? downloadUrl,
            String? updateLog,
            bool forceUpdate,
            String createdAt,
            String updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo():
        return $default(
            _that.id,
            _that.appName,
            _that.iconUrl,
            _that.version,
            _that.buildNum,
            _that.platform,
            _that.packageName,
            _that.fileName,
            _that.packageSize,
            _that.downloadUrl,
            _that.updateLog,
            _that.forceUpdate,
            _that.createdAt,
            _that.updatedAt);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String appName,
            String? iconUrl,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String fileName,
            int packageSize,
            String? downloadUrl,
            String? updateLog,
            bool forceUpdate,
            String createdAt,
            String updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidAppUpdateVo() when $default != null:
        return $default(
            _that.id,
            _that.appName,
            _that.iconUrl,
            _that.version,
            _that.buildNum,
            _that.platform,
            _that.packageName,
            _that.fileName,
            _that.packageSize,
            _that.downloadUrl,
            _that.updateLog,
            _that.forceUpdate,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AndroidAppUpdateVo implements AndroidAppUpdateVo {
  const _AndroidAppUpdateVo(
      {required this.id,
      required this.appName,
      this.iconUrl,
      required this.version,
      required this.buildNum,
      required this.platform,
      required this.packageName,
      required this.fileName,
      required this.packageSize,
      this.downloadUrl,
      this.updateLog,
      required this.forceUpdate,
      required this.createdAt,
      required this.updatedAt});
  factory _AndroidAppUpdateVo.fromJson(Map<String, dynamic> json) =>
      _$AndroidAppUpdateVoFromJson(json);

  @override
  final int id;
  @override
  final String appName;
  @override
  final String? iconUrl;
  @override
  final String version;
  @override
  final int buildNum;
  @override
  final AppPlatform platform;
  @override
  final String packageName;
  @override
  final String fileName;
  @override
  final int packageSize;
  @override
  final String? downloadUrl;
  @override
  final String? updateLog;
  @override
  final bool forceUpdate;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  /// Create a copy of AndroidAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AndroidAppUpdateVoCopyWith<_AndroidAppUpdateVo> get copyWith =>
      __$AndroidAppUpdateVoCopyWithImpl<_AndroidAppUpdateVo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AndroidAppUpdateVoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AndroidAppUpdateVo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNum, buildNum) ||
                other.buildNum == buildNum) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.packageSize, packageSize) ||
                other.packageSize == packageSize) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.updateLog, updateLog) ||
                other.updateLog == updateLog) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      appName,
      iconUrl,
      version,
      buildNum,
      platform,
      packageName,
      fileName,
      packageSize,
      downloadUrl,
      updateLog,
      forceUpdate,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'AndroidAppUpdateVo(id: $id, appName: $appName, iconUrl: $iconUrl, version: $version, buildNum: $buildNum, platform: $platform, packageName: $packageName, fileName: $fileName, packageSize: $packageSize, downloadUrl: $downloadUrl, updateLog: $updateLog, forceUpdate: $forceUpdate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$AndroidAppUpdateVoCopyWith<$Res>
    implements $AndroidAppUpdateVoCopyWith<$Res> {
  factory _$AndroidAppUpdateVoCopyWith(
          _AndroidAppUpdateVo value, $Res Function(_AndroidAppUpdateVo) _then) =
      __$AndroidAppUpdateVoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String appName,
      String? iconUrl,
      String version,
      int buildNum,
      AppPlatform platform,
      String packageName,
      String fileName,
      int packageSize,
      String? downloadUrl,
      String? updateLog,
      bool forceUpdate,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$AndroidAppUpdateVoCopyWithImpl<$Res>
    implements _$AndroidAppUpdateVoCopyWith<$Res> {
  __$AndroidAppUpdateVoCopyWithImpl(this._self, this._then);

  final _AndroidAppUpdateVo _self;
  final $Res Function(_AndroidAppUpdateVo) _then;

  /// Create a copy of AndroidAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? iconUrl = freezed,
    Object? version = null,
    Object? buildNum = null,
    Object? platform = null,
    Object? packageName = null,
    Object? fileName = null,
    Object? packageSize = null,
    Object? downloadUrl = freezed,
    Object? updateLog = freezed,
    Object? forceUpdate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_AndroidAppUpdateVo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNum: null == buildNum
          ? _self.buildNum
          : buildNum // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      packageSize: null == packageSize
          ? _self.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as int,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLog: freezed == updateLog
          ? _self.updateLog
          : updateLog // ignore: cast_nullable_to_non_nullable
              as String?,
      forceUpdate: null == forceUpdate
          ? _self.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$IosAppUpdateVo {
  String get appName;
  String get version;
  int get buildNum;
  AppPlatform get platform;
  String get packageName;
  String? get updateLog;
  String? get appUrl;

  /// Create a copy of IosAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IosAppUpdateVoCopyWith<IosAppUpdateVo> get copyWith =>
      _$IosAppUpdateVoCopyWithImpl<IosAppUpdateVo>(
          this as IosAppUpdateVo, _$identity);

  /// Serializes this IosAppUpdateVo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IosAppUpdateVo &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNum, buildNum) ||
                other.buildNum == buildNum) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.updateLog, updateLog) ||
                other.updateLog == updateLog) &&
            (identical(other.appUrl, appUrl) || other.appUrl == appUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appName, version, buildNum,
      platform, packageName, updateLog, appUrl);

  @override
  String toString() {
    return 'IosAppUpdateVo(appName: $appName, version: $version, buildNum: $buildNum, platform: $platform, packageName: $packageName, updateLog: $updateLog, appUrl: $appUrl)';
  }
}

/// @nodoc
abstract mixin class $IosAppUpdateVoCopyWith<$Res> {
  factory $IosAppUpdateVoCopyWith(
          IosAppUpdateVo value, $Res Function(IosAppUpdateVo) _then) =
      _$IosAppUpdateVoCopyWithImpl;
  @useResult
  $Res call(
      {String appName,
      String version,
      int buildNum,
      AppPlatform platform,
      String packageName,
      String? updateLog,
      String? appUrl});
}

/// @nodoc
class _$IosAppUpdateVoCopyWithImpl<$Res>
    implements $IosAppUpdateVoCopyWith<$Res> {
  _$IosAppUpdateVoCopyWithImpl(this._self, this._then);

  final IosAppUpdateVo _self;
  final $Res Function(IosAppUpdateVo) _then;

  /// Create a copy of IosAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? version = null,
    Object? buildNum = null,
    Object? platform = null,
    Object? packageName = null,
    Object? updateLog = freezed,
    Object? appUrl = freezed,
  }) {
    return _then(_self.copyWith(
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNum: null == buildNum
          ? _self.buildNum
          : buildNum // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      updateLog: freezed == updateLog
          ? _self.updateLog
          : updateLog // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _self.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IosAppUpdateVo].
extension IosAppUpdateVoPatterns on IosAppUpdateVo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_IosAppUpdateVo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_IosAppUpdateVo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_IosAppUpdateVo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String appName,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String? updateLog,
            String? appUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo() when $default != null:
        return $default(_that.appName, _that.version, _that.buildNum,
            _that.platform, _that.packageName, _that.updateLog, _that.appUrl);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String appName,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String? updateLog,
            String? appUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo():
        return $default(_that.appName, _that.version, _that.buildNum,
            _that.platform, _that.packageName, _that.updateLog, _that.appUrl);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String appName,
            String version,
            int buildNum,
            AppPlatform platform,
            String packageName,
            String? updateLog,
            String? appUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IosAppUpdateVo() when $default != null:
        return $default(_that.appName, _that.version, _that.buildNum,
            _that.platform, _that.packageName, _that.updateLog, _that.appUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IosAppUpdateVo implements IosAppUpdateVo {
  const _IosAppUpdateVo(
      {required this.appName,
      required this.version,
      required this.buildNum,
      required this.platform,
      required this.packageName,
      this.updateLog,
      this.appUrl});
  factory _IosAppUpdateVo.fromJson(Map<String, dynamic> json) =>
      _$IosAppUpdateVoFromJson(json);

  @override
  final String appName;
  @override
  final String version;
  @override
  final int buildNum;
  @override
  final AppPlatform platform;
  @override
  final String packageName;
  @override
  final String? updateLog;
  @override
  final String? appUrl;

  /// Create a copy of IosAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IosAppUpdateVoCopyWith<_IosAppUpdateVo> get copyWith =>
      __$IosAppUpdateVoCopyWithImpl<_IosAppUpdateVo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IosAppUpdateVoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IosAppUpdateVo &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNum, buildNum) ||
                other.buildNum == buildNum) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.updateLog, updateLog) ||
                other.updateLog == updateLog) &&
            (identical(other.appUrl, appUrl) || other.appUrl == appUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appName, version, buildNum,
      platform, packageName, updateLog, appUrl);

  @override
  String toString() {
    return 'IosAppUpdateVo(appName: $appName, version: $version, buildNum: $buildNum, platform: $platform, packageName: $packageName, updateLog: $updateLog, appUrl: $appUrl)';
  }
}

/// @nodoc
abstract mixin class _$IosAppUpdateVoCopyWith<$Res>
    implements $IosAppUpdateVoCopyWith<$Res> {
  factory _$IosAppUpdateVoCopyWith(
          _IosAppUpdateVo value, $Res Function(_IosAppUpdateVo) _then) =
      __$IosAppUpdateVoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String appName,
      String version,
      int buildNum,
      AppPlatform platform,
      String packageName,
      String? updateLog,
      String? appUrl});
}

/// @nodoc
class __$IosAppUpdateVoCopyWithImpl<$Res>
    implements _$IosAppUpdateVoCopyWith<$Res> {
  __$IosAppUpdateVoCopyWithImpl(this._self, this._then);

  final _IosAppUpdateVo _self;
  final $Res Function(_IosAppUpdateVo) _then;

  /// Create a copy of IosAppUpdateVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appName = null,
    Object? version = null,
    Object? buildNum = null,
    Object? platform = null,
    Object? packageName = null,
    Object? updateLog = freezed,
    Object? appUrl = freezed,
  }) {
    return _then(_IosAppUpdateVo(
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNum: null == buildNum
          ? _self.buildNum
          : buildNum // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      updateLog: freezed == updateLog
          ? _self.updateLog
          : updateLog // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _self.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AppUpdateResult {
  bool? get hasUpdate;
  AndroidAppUpdateVo? get androidUpdate;
  IosAppUpdateVo? get iosUpdate;

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppUpdateResultCopyWith<AppUpdateResult> get copyWith =>
      _$AppUpdateResultCopyWithImpl<AppUpdateResult>(
          this as AppUpdateResult, _$identity);

  /// Serializes this AppUpdateResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUpdateResult &&
            (identical(other.hasUpdate, hasUpdate) ||
                other.hasUpdate == hasUpdate) &&
            (identical(other.androidUpdate, androidUpdate) ||
                other.androidUpdate == androidUpdate) &&
            (identical(other.iosUpdate, iosUpdate) ||
                other.iosUpdate == iosUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hasUpdate, androidUpdate, iosUpdate);

  @override
  String toString() {
    return 'AppUpdateResult(hasUpdate: $hasUpdate, androidUpdate: $androidUpdate, iosUpdate: $iosUpdate)';
  }
}

/// @nodoc
abstract mixin class $AppUpdateResultCopyWith<$Res> {
  factory $AppUpdateResultCopyWith(
          AppUpdateResult value, $Res Function(AppUpdateResult) _then) =
      _$AppUpdateResultCopyWithImpl;
  @useResult
  $Res call(
      {bool? hasUpdate,
      AndroidAppUpdateVo? androidUpdate,
      IosAppUpdateVo? iosUpdate});

  $AndroidAppUpdateVoCopyWith<$Res>? get androidUpdate;
  $IosAppUpdateVoCopyWith<$Res>? get iosUpdate;
}

/// @nodoc
class _$AppUpdateResultCopyWithImpl<$Res>
    implements $AppUpdateResultCopyWith<$Res> {
  _$AppUpdateResultCopyWithImpl(this._self, this._then);

  final AppUpdateResult _self;
  final $Res Function(AppUpdateResult) _then;

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasUpdate = freezed,
    Object? androidUpdate = freezed,
    Object? iosUpdate = freezed,
  }) {
    return _then(_self.copyWith(
      hasUpdate: freezed == hasUpdate
          ? _self.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidUpdate: freezed == androidUpdate
          ? _self.androidUpdate
          : androidUpdate // ignore: cast_nullable_to_non_nullable
              as AndroidAppUpdateVo?,
      iosUpdate: freezed == iosUpdate
          ? _self.iosUpdate
          : iosUpdate // ignore: cast_nullable_to_non_nullable
              as IosAppUpdateVo?,
    ));
  }

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AndroidAppUpdateVoCopyWith<$Res>? get androidUpdate {
    if (_self.androidUpdate == null) {
      return null;
    }

    return $AndroidAppUpdateVoCopyWith<$Res>(_self.androidUpdate!, (value) {
      return _then(_self.copyWith(androidUpdate: value));
    });
  }

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IosAppUpdateVoCopyWith<$Res>? get iosUpdate {
    if (_self.iosUpdate == null) {
      return null;
    }

    return $IosAppUpdateVoCopyWith<$Res>(_self.iosUpdate!, (value) {
      return _then(_self.copyWith(iosUpdate: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AppUpdateResult].
extension AppUpdateResultPatterns on AppUpdateResult {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppUpdateResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppUpdateResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppUpdateResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool? hasUpdate, AndroidAppUpdateVo? androidUpdate,
            IosAppUpdateVo? iosUpdate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult() when $default != null:
        return $default(_that.hasUpdate, _that.androidUpdate, _that.iosUpdate);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool? hasUpdate, AndroidAppUpdateVo? androidUpdate,
            IosAppUpdateVo? iosUpdate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult():
        return $default(_that.hasUpdate, _that.androidUpdate, _that.iosUpdate);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool? hasUpdate, AndroidAppUpdateVo? androidUpdate,
            IosAppUpdateVo? iosUpdate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUpdateResult() when $default != null:
        return $default(_that.hasUpdate, _that.androidUpdate, _that.iosUpdate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppUpdateResult implements AppUpdateResult {
  const _AppUpdateResult({this.hasUpdate, this.androidUpdate, this.iosUpdate});
  factory _AppUpdateResult.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateResultFromJson(json);

  @override
  final bool? hasUpdate;
  @override
  final AndroidAppUpdateVo? androidUpdate;
  @override
  final IosAppUpdateVo? iosUpdate;

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppUpdateResultCopyWith<_AppUpdateResult> get copyWith =>
      __$AppUpdateResultCopyWithImpl<_AppUpdateResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppUpdateResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUpdateResult &&
            (identical(other.hasUpdate, hasUpdate) ||
                other.hasUpdate == hasUpdate) &&
            (identical(other.androidUpdate, androidUpdate) ||
                other.androidUpdate == androidUpdate) &&
            (identical(other.iosUpdate, iosUpdate) ||
                other.iosUpdate == iosUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hasUpdate, androidUpdate, iosUpdate);

  @override
  String toString() {
    return 'AppUpdateResult(hasUpdate: $hasUpdate, androidUpdate: $androidUpdate, iosUpdate: $iosUpdate)';
  }
}

/// @nodoc
abstract mixin class _$AppUpdateResultCopyWith<$Res>
    implements $AppUpdateResultCopyWith<$Res> {
  factory _$AppUpdateResultCopyWith(
          _AppUpdateResult value, $Res Function(_AppUpdateResult) _then) =
      __$AppUpdateResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? hasUpdate,
      AndroidAppUpdateVo? androidUpdate,
      IosAppUpdateVo? iosUpdate});

  @override
  $AndroidAppUpdateVoCopyWith<$Res>? get androidUpdate;
  @override
  $IosAppUpdateVoCopyWith<$Res>? get iosUpdate;
}

/// @nodoc
class __$AppUpdateResultCopyWithImpl<$Res>
    implements _$AppUpdateResultCopyWith<$Res> {
  __$AppUpdateResultCopyWithImpl(this._self, this._then);

  final _AppUpdateResult _self;
  final $Res Function(_AppUpdateResult) _then;

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hasUpdate = freezed,
    Object? androidUpdate = freezed,
    Object? iosUpdate = freezed,
  }) {
    return _then(_AppUpdateResult(
      hasUpdate: freezed == hasUpdate
          ? _self.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      androidUpdate: freezed == androidUpdate
          ? _self.androidUpdate
          : androidUpdate // ignore: cast_nullable_to_non_nullable
              as AndroidAppUpdateVo?,
      iosUpdate: freezed == iosUpdate
          ? _self.iosUpdate
          : iosUpdate // ignore: cast_nullable_to_non_nullable
              as IosAppUpdateVo?,
    ));
  }

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AndroidAppUpdateVoCopyWith<$Res>? get androidUpdate {
    if (_self.androidUpdate == null) {
      return null;
    }

    return $AndroidAppUpdateVoCopyWith<$Res>(_self.androidUpdate!, (value) {
      return _then(_self.copyWith(androidUpdate: value));
    });
  }

  /// Create a copy of AppUpdateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IosAppUpdateVoCopyWith<$Res>? get iosUpdate {
    if (_self.iosUpdate == null) {
      return null;
    }

    return $IosAppUpdateVoCopyWith<$Res>(_self.iosUpdate!, (value) {
      return _then(_self.copyWith(iosUpdate: value));
    });
  }
}

// dart format on
