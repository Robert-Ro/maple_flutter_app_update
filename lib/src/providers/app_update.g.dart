// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkAppUpdateHash() => r'6f39c31111b46bd5b2fa75cd84ba23fdd1487549';

/// See also [checkAppUpdate].
@ProviderFor(checkAppUpdate)
final checkAppUpdateProvider =
    AutoDisposeFutureProvider<AppUpdateResult?>.internal(
  checkAppUpdate,
  name: r'checkAppUpdateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$checkAppUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CheckAppUpdateRef = AutoDisposeFutureProviderRef<AppUpdateResult?>;
String _$installAndroidHash() => r'c14cf0ed1920b5d25f3f0c2c90233b12fbfbf2b8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [installAndroid].
@ProviderFor(installAndroid)
const installAndroidProvider = InstallAndroidFamily();

/// See also [installAndroid].
class InstallAndroidFamily extends Family<AsyncValue<bool>> {
  /// See also [installAndroid].
  const InstallAndroidFamily();

  /// See also [installAndroid].
  InstallAndroidProvider call(
    AndroidAppUpdateVo appUpdate,
  ) {
    return InstallAndroidProvider(
      appUpdate,
    );
  }

  @override
  InstallAndroidProvider getProviderOverride(
    covariant InstallAndroidProvider provider,
  ) {
    return call(
      provider.appUpdate,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'installAndroidProvider';
}

/// See also [installAndroid].
class InstallAndroidProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [installAndroid].
  InstallAndroidProvider(
    AndroidAppUpdateVo appUpdate,
  ) : this._internal(
          (ref) => installAndroid(
            ref as InstallAndroidRef,
            appUpdate,
          ),
          from: installAndroidProvider,
          name: r'installAndroidProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$installAndroidHash,
          dependencies: InstallAndroidFamily._dependencies,
          allTransitiveDependencies:
              InstallAndroidFamily._allTransitiveDependencies,
          appUpdate: appUpdate,
        );

  InstallAndroidProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.appUpdate,
  }) : super.internal();

  final AndroidAppUpdateVo appUpdate;

  @override
  Override overrideWith(
    FutureOr<bool> Function(InstallAndroidRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InstallAndroidProvider._internal(
        (ref) => create(ref as InstallAndroidRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        appUpdate: appUpdate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _InstallAndroidProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InstallAndroidProvider && other.appUpdate == appUpdate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, appUpdate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InstallAndroidRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `appUpdate` of this provider.
  AndroidAppUpdateVo get appUpdate;
}

class _InstallAndroidProviderElement
    extends AutoDisposeFutureProviderElement<bool> with InstallAndroidRef {
  _InstallAndroidProviderElement(super.provider);

  @override
  AndroidAppUpdateVo get appUpdate =>
      (origin as InstallAndroidProvider).appUpdate;
}

String _$installIosHash() => r'83025ce53c8661d171dd08d563853bfaa2687e6e';

/// See also [installIos].
@ProviderFor(installIos)
const installIosProvider = InstallIosFamily();

/// See also [installIos].
class InstallIosFamily extends Family<AsyncValue<bool>> {
  /// See also [installIos].
  const InstallIosFamily();

  /// See also [installIos].
  InstallIosProvider call(
    IosAppUpdateVo appUpdate,
  ) {
    return InstallIosProvider(
      appUpdate,
    );
  }

  @override
  InstallIosProvider getProviderOverride(
    covariant InstallIosProvider provider,
  ) {
    return call(
      provider.appUpdate,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'installIosProvider';
}

/// See also [installIos].
class InstallIosProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [installIos].
  InstallIosProvider(
    IosAppUpdateVo appUpdate,
  ) : this._internal(
          (ref) => installIos(
            ref as InstallIosRef,
            appUpdate,
          ),
          from: installIosProvider,
          name: r'installIosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$installIosHash,
          dependencies: InstallIosFamily._dependencies,
          allTransitiveDependencies:
              InstallIosFamily._allTransitiveDependencies,
          appUpdate: appUpdate,
        );

  InstallIosProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.appUpdate,
  }) : super.internal();

  final IosAppUpdateVo appUpdate;

  @override
  Override overrideWith(
    FutureOr<bool> Function(InstallIosRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InstallIosProvider._internal(
        (ref) => create(ref as InstallIosRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        appUpdate: appUpdate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _InstallIosProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InstallIosProvider && other.appUpdate == appUpdate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, appUpdate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InstallIosRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `appUpdate` of this provider.
  IosAppUpdateVo get appUpdate;
}

class _InstallIosProviderElement extends AutoDisposeFutureProviderElement<bool>
    with InstallIosRef {
  _InstallIosProviderElement(super.provider);

  @override
  IosAppUpdateVo get appUpdate => (origin as InstallIosProvider).appUpdate;
}

String _$openStoreUrlHash() => r'd038f9e3354f749923889e014efefa2dd915a556';

/// See also [openStoreUrl].
@ProviderFor(openStoreUrl)
const openStoreUrlProvider = OpenStoreUrlFamily();

/// See also [openStoreUrl].
class OpenStoreUrlFamily extends Family<AsyncValue<bool>> {
  /// See also [openStoreUrl].
  const OpenStoreUrlFamily();

  /// See also [openStoreUrl].
  OpenStoreUrlProvider call(
    String? url,
  ) {
    return OpenStoreUrlProvider(
      url,
    );
  }

  @override
  OpenStoreUrlProvider getProviderOverride(
    covariant OpenStoreUrlProvider provider,
  ) {
    return call(
      provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'openStoreUrlProvider';
}

/// See also [openStoreUrl].
class OpenStoreUrlProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [openStoreUrl].
  OpenStoreUrlProvider(
    String? url,
  ) : this._internal(
          (ref) => openStoreUrl(
            ref as OpenStoreUrlRef,
            url,
          ),
          from: openStoreUrlProvider,
          name: r'openStoreUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$openStoreUrlHash,
          dependencies: OpenStoreUrlFamily._dependencies,
          allTransitiveDependencies:
              OpenStoreUrlFamily._allTransitiveDependencies,
          url: url,
        );

  OpenStoreUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String? url;

  @override
  Override overrideWith(
    FutureOr<bool> Function(OpenStoreUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OpenStoreUrlProvider._internal(
        (ref) => create(ref as OpenStoreUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _OpenStoreUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OpenStoreUrlProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OpenStoreUrlRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `url` of this provider.
  String? get url;
}

class _OpenStoreUrlProviderElement
    extends AutoDisposeFutureProviderElement<bool> with OpenStoreUrlRef {
  _OpenStoreUrlProviderElement(super.provider);

  @override
  String? get url => (origin as OpenStoreUrlProvider).url;
}

String _$isVersionNewerHash() => r'46bb3b70c4a5d64f322adbcff46e0eb4a40472ad';

/// See also [isVersionNewer].
@ProviderFor(isVersionNewer)
const isVersionNewerProvider = IsVersionNewerFamily();

/// See also [isVersionNewer].
class IsVersionNewerFamily extends Family<bool> {
  /// See also [isVersionNewer].
  const IsVersionNewerFamily();

  /// See also [isVersionNewer].
  IsVersionNewerProvider call({
    required String localVersion,
    required String storeVersion,
  }) {
    return IsVersionNewerProvider(
      localVersion: localVersion,
      storeVersion: storeVersion,
    );
  }

  @override
  IsVersionNewerProvider getProviderOverride(
    covariant IsVersionNewerProvider provider,
  ) {
    return call(
      localVersion: provider.localVersion,
      storeVersion: provider.storeVersion,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isVersionNewerProvider';
}

/// See also [isVersionNewer].
class IsVersionNewerProvider extends AutoDisposeProvider<bool> {
  /// See also [isVersionNewer].
  IsVersionNewerProvider({
    required String localVersion,
    required String storeVersion,
  }) : this._internal(
          (ref) => isVersionNewer(
            ref as IsVersionNewerRef,
            localVersion: localVersion,
            storeVersion: storeVersion,
          ),
          from: isVersionNewerProvider,
          name: r'isVersionNewerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isVersionNewerHash,
          dependencies: IsVersionNewerFamily._dependencies,
          allTransitiveDependencies:
              IsVersionNewerFamily._allTransitiveDependencies,
          localVersion: localVersion,
          storeVersion: storeVersion,
        );

  IsVersionNewerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.localVersion,
    required this.storeVersion,
  }) : super.internal();

  final String localVersion;
  final String storeVersion;

  @override
  Override overrideWith(
    bool Function(IsVersionNewerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsVersionNewerProvider._internal(
        (ref) => create(ref as IsVersionNewerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        localVersion: localVersion,
        storeVersion: storeVersion,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsVersionNewerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsVersionNewerProvider &&
        other.localVersion == localVersion &&
        other.storeVersion == storeVersion;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, localVersion.hashCode);
    hash = _SystemHash.combine(hash, storeVersion.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsVersionNewerRef on AutoDisposeProviderRef<bool> {
  /// The parameter `localVersion` of this provider.
  String get localVersion;

  /// The parameter `storeVersion` of this provider.
  String get storeVersion;
}

class _IsVersionNewerProviderElement extends AutoDisposeProviderElement<bool>
    with IsVersionNewerRef {
  _IsVersionNewerProviderElement(super.provider);

  @override
  String get localVersion => (origin as IsVersionNewerProvider).localVersion;
  @override
  String get storeVersion => (origin as IsVersionNewerProvider).storeVersion;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
