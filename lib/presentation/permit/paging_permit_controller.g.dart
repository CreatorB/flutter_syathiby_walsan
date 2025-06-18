// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_permit_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pagingPermitControllerHash() =>
    r'187af1eeb73c854d512c1a03a66f28b6f7804029';

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

abstract class _$PagingPermitController
    extends BuildlessAutoDisposeAsyncNotifier<List<Permit>> {
  late final String key;

  FutureOr<List<Permit>> build({
    required String key,
  });
}

/// See also [PagingPermitController].
@ProviderFor(PagingPermitController)
const pagingPermitControllerProvider = PagingPermitControllerFamily();

/// See also [PagingPermitController].
class PagingPermitControllerFamily extends Family<AsyncValue<List<Permit>>> {
  /// See also [PagingPermitController].
  const PagingPermitControllerFamily();

  /// See also [PagingPermitController].
  PagingPermitControllerProvider call({
    required String key,
  }) {
    return PagingPermitControllerProvider(
      key: key,
    );
  }

  @override
  PagingPermitControllerProvider getProviderOverride(
    covariant PagingPermitControllerProvider provider,
  ) {
    return call(
      key: provider.key,
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
  String? get name => r'pagingPermitControllerProvider';
}

/// See also [PagingPermitController].
class PagingPermitControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PagingPermitController,
        List<Permit>> {
  /// See also [PagingPermitController].
  PagingPermitControllerProvider({
    required String key,
  }) : this._internal(
          () => PagingPermitController()..key = key,
          from: pagingPermitControllerProvider,
          name: r'pagingPermitControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pagingPermitControllerHash,
          dependencies: PagingPermitControllerFamily._dependencies,
          allTransitiveDependencies:
              PagingPermitControllerFamily._allTransitiveDependencies,
          key: key,
        );

  PagingPermitControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  FutureOr<List<Permit>> runNotifierBuild(
    covariant PagingPermitController notifier,
  ) {
    return notifier.build(
      key: key,
    );
  }

  @override
  Override overrideWith(PagingPermitController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PagingPermitControllerProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PagingPermitController, List<Permit>>
      createElement() {
    return _PagingPermitControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PagingPermitControllerProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PagingPermitControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Permit>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _PagingPermitControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PagingPermitController,
        List<Permit>> with PagingPermitControllerRef {
  _PagingPermitControllerProviderElement(super.provider);

  @override
  String get key => (origin as PagingPermitControllerProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
