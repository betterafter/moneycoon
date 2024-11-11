// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_items.riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeItemsHash() => r'209c1f3eb9a6b47306cd938060d290d7bbac4a3a';

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

/// See also [storeItems].
@ProviderFor(storeItems)
const storeItemsProvider = StoreItemsFamily();

/// See also [storeItems].
class StoreItemsFamily extends Family<AsyncValue<List<StoreItemEntity>>> {
  /// See also [storeItems].
  const StoreItemsFamily();

  /// See also [storeItems].
  StoreItemsProvider call(
    String url,
  ) {
    return StoreItemsProvider(
      url,
    );
  }

  @override
  StoreItemsProvider getProviderOverride(
    covariant StoreItemsProvider provider,
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
  String? get name => r'storeItemsProvider';
}

/// See also [storeItems].
class StoreItemsProvider
    extends AutoDisposeFutureProvider<List<StoreItemEntity>> {
  /// See also [storeItems].
  StoreItemsProvider(
    String url,
  ) : this._internal(
          (ref) => storeItems(
            ref as StoreItemsRef,
            url,
          ),
          from: storeItemsProvider,
          name: r'storeItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storeItemsHash,
          dependencies: StoreItemsFamily._dependencies,
          allTransitiveDependencies:
              StoreItemsFamily._allTransitiveDependencies,
          url: url,
        );

  StoreItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<List<StoreItemEntity>> Function(StoreItemsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StoreItemsProvider._internal(
        (ref) => create(ref as StoreItemsRef),
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
  AutoDisposeFutureProviderElement<List<StoreItemEntity>> createElement() {
    return _StoreItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoreItemsProvider && other.url == url;
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
mixin StoreItemsRef on AutoDisposeFutureProviderRef<List<StoreItemEntity>> {
  /// The parameter `url` of this provider.
  String get url;
}

class _StoreItemsProviderElement
    extends AutoDisposeFutureProviderElement<List<StoreItemEntity>>
    with StoreItemsRef {
  _StoreItemsProviderElement(super.provider);

  @override
  String get url => (origin as StoreItemsProvider).url;
}

String _$selectedCategoryHash() => r'452c2afa74317acb17dd4e78bf713f68b89e26a4';

/// See also [SelectedCategory].
@ProviderFor(SelectedCategory)
final selectedCategoryProvider = AutoDisposeAsyncNotifierProvider<
    SelectedCategory, (String, String)>.internal(
  SelectedCategory.new,
  name: r'selectedCategoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCategoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCategory = AutoDisposeAsyncNotifier<(String, String)>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
