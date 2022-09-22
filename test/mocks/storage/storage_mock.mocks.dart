// Mocks generated by Mockito 5.3.1 from annotations
// in riverpod_boilerplate/test/mocks/storage/storage_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:riverpod_boilerplate/data/data_source/local/secure_storage/secure_storage_manager.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [SecureStorageManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecureStorageManager extends _i1.Mock
    implements _i2.SecureStorageManager {
  MockSecureStorageManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String?> getAsync({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #getAsync,
          [],
          {#key: key},
        ),
        returnValue: _i3.Future<String?>.value(),
      ) as _i3.Future<String?>);
  @override
  _i3.Future<bool> putAsync({
    required String? key,
    required String? value,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAsync,
          [],
          {
            #key: key,
            #value: value,
          },
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<void> deleteAsync({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #deleteAsync,
          [],
          {#key: key},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
