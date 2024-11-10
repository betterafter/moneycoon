// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_visit_ranker_section.riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVisitRankerHash() => r'd1a1d3116c2b4ed7dc43f8acf780822470c00cd3';

/// See also [getVisitRanker].
@ProviderFor(getVisitRanker)
final getVisitRankerProvider =
    AutoDisposeFutureProvider<List<VisitRankerEntity>>.internal(
  getVisitRanker,
  name: r'getVisitRankerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getVisitRankerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetVisitRankerRef
    = AutoDisposeFutureProviderRef<List<VisitRankerEntity>>;
String _$rankerDetailClickHash() => r'4443cba58a6844a9339ad29f2e6ff01212cb39be';

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

abstract class _$RankerDetailClick extends BuildlessAutoDisposeNotifier<bool> {
  late final int index;

  bool build(
    int index,
  );
}

/// See also [RankerDetailClick].
@ProviderFor(RankerDetailClick)
const rankerDetailClickProvider = RankerDetailClickFamily();

/// See also [RankerDetailClick].
class RankerDetailClickFamily extends Family<bool> {
  /// See also [RankerDetailClick].
  const RankerDetailClickFamily();

  /// See also [RankerDetailClick].
  RankerDetailClickProvider call(
    int index,
  ) {
    return RankerDetailClickProvider(
      index,
    );
  }

  @override
  RankerDetailClickProvider getProviderOverride(
    covariant RankerDetailClickProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'rankerDetailClickProvider';
}

/// See also [RankerDetailClick].
class RankerDetailClickProvider
    extends AutoDisposeNotifierProviderImpl<RankerDetailClick, bool> {
  /// See also [RankerDetailClick].
  RankerDetailClickProvider(
    int index,
  ) : this._internal(
          () => RankerDetailClick()..index = index,
          from: rankerDetailClickProvider,
          name: r'rankerDetailClickProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rankerDetailClickHash,
          dependencies: RankerDetailClickFamily._dependencies,
          allTransitiveDependencies:
              RankerDetailClickFamily._allTransitiveDependencies,
          index: index,
        );

  RankerDetailClickProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  bool runNotifierBuild(
    covariant RankerDetailClick notifier,
  ) {
    return notifier.build(
      index,
    );
  }

  @override
  Override overrideWith(RankerDetailClick Function() create) {
    return ProviderOverride(
      origin: this,
      override: RankerDetailClickProvider._internal(
        () => create()..index = index,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<RankerDetailClick, bool> createElement() {
    return _RankerDetailClickProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RankerDetailClickProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RankerDetailClickRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `index` of this provider.
  int get index;
}

class _RankerDetailClickProviderElement
    extends AutoDisposeNotifierProviderElement<RankerDetailClick, bool>
    with RankerDetailClickRef {
  _RankerDetailClickProviderElement(super.provider);

  @override
  int get index => (origin as RankerDetailClickProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
