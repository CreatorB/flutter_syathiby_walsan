// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_student_health_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pagingStudentHealthControllerHash() =>
    r'64cc2754a8b1ab361c00fbf1a6fd771339ab5f16';

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

abstract class _$PagingStudentHealthController
    extends BuildlessAutoDisposeAsyncNotifier<List<Kesehatan>> {
  late final String key;

  FutureOr<List<Kesehatan>> build({
    required String key,
  });
}

/// See also [PagingStudentHealthController].
@ProviderFor(PagingStudentHealthController)
const pagingStudentHealthControllerProvider =
    PagingStudentHealthControllerFamily();

/// See also [PagingStudentHealthController].
class PagingStudentHealthControllerFamily
    extends Family<AsyncValue<List<Kesehatan>>> {
  /// See also [PagingStudentHealthController].
  const PagingStudentHealthControllerFamily();

  /// See also [PagingStudentHealthController].
  PagingStudentHealthControllerProvider call({
    required String key,
  }) {
    return PagingStudentHealthControllerProvider(
      key: key,
    );
  }

  @override
  PagingStudentHealthControllerProvider getProviderOverride(
    covariant PagingStudentHealthControllerProvider provider,
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
  String? get name => r'pagingStudentHealthControllerProvider';
}

/// See also [PagingStudentHealthController].
class PagingStudentHealthControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PagingStudentHealthController,
        List<Kesehatan>> {
  /// See also [PagingStudentHealthController].
  PagingStudentHealthControllerProvider({
    required String key,
  }) : this._internal(
          () => PagingStudentHealthController()..key = key,
          from: pagingStudentHealthControllerProvider,
          name: r'pagingStudentHealthControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pagingStudentHealthControllerHash,
          dependencies: PagingStudentHealthControllerFamily._dependencies,
          allTransitiveDependencies:
              PagingStudentHealthControllerFamily._allTransitiveDependencies,
          key: key,
        );

  PagingStudentHealthControllerProvider._internal(
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
  FutureOr<List<Kesehatan>> runNotifierBuild(
    covariant PagingStudentHealthController notifier,
  ) {
    return notifier.build(
      key: key,
    );
  }

  @override
  Override overrideWith(PagingStudentHealthController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PagingStudentHealthControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PagingStudentHealthController,
      List<Kesehatan>> createElement() {
    return _PagingStudentHealthControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PagingStudentHealthControllerProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PagingStudentHealthControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Kesehatan>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _PagingStudentHealthControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PagingStudentHealthController,
        List<Kesehatan>> with PagingStudentHealthControllerRef {
  _PagingStudentHealthControllerProviderElement(super.provider);

  @override
  String get key => (origin as PagingStudentHealthControllerProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
