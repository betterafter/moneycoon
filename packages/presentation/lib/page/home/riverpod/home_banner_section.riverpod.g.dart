// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_section.riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeBannerHash() => r'7f9cb91591d3da0788e4e4a9a1c640f316e25a6a';

/// See also [homeBanner].
@ProviderFor(homeBanner)
final homeBannerProvider =
    AutoDisposeFutureProvider<List<HomeBannerEntity>?>.internal(
  homeBanner,
  name: r'homeBannerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeBannerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HomeBannerRef = AutoDisposeFutureProviderRef<List<HomeBannerEntity>?>;
String _$bannerControllerHash() => r'25c1018e2ee229a690fe3d9cbb7944ca8c76838c';

/// See also [BannerController].
@ProviderFor(BannerController)
final bannerControllerProvider = AutoDisposeNotifierProvider<BannerController,
    (PageController, int)>.internal(
  BannerController.new,
  name: r'bannerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bannerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BannerController = AutoDisposeNotifier<(PageController, int)>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
