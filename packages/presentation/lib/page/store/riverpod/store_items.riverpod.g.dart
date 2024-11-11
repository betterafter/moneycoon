// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_items.riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeItemsHash() => r'ea424e5eacf9d8fc0aa70011600044c996093dc0';

/// See also [storeItems].
@ProviderFor(storeItems)
final storeItemsProvider =
    AutoDisposeFutureProvider<List<StoreItemEntity>>.internal(
  storeItems,
  name: r'storeItemsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storeItemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StoreItemsRef = AutoDisposeFutureProviderRef<List<StoreItemEntity>>;
String _$selectedCategoryHash() => r'7cfdb8743b46fab900be3b1d9965f574c012cfc6';

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
