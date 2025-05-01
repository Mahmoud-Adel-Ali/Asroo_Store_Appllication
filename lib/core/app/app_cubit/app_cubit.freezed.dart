// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppState()';
  }
}

/// @nodoc
class $AppStateCopyWith<$Res> {
  $AppStateCopyWith(AppState _, $Res Function(AppState) __);
}

/// @nodoc

class _Initial implements AppState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppState.initial()';
  }
}

/// @nodoc

class ThemeChangedMode implements AppState {
  const ThemeChangedMode({required this.isDark});

  final bool isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeChangedModeCopyWith<ThemeChangedMode> get copyWith =>
      _$ThemeChangedModeCopyWithImpl<ThemeChangedMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChangedMode &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @override
  String toString() {
    return 'AppState.themeChangedMode(isDark: $isDark)';
  }
}

/// @nodoc
abstract mixin class $ThemeChangedModeCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $ThemeChangedModeCopyWith(
          ThemeChangedMode value, $Res Function(ThemeChangedMode) _then) =
      _$ThemeChangedModeCopyWithImpl;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$ThemeChangedModeCopyWithImpl<$Res>
    implements $ThemeChangedModeCopyWith<$Res> {
  _$ThemeChangedModeCopyWithImpl(this._self, this._then);

  final ThemeChangedMode _self;
  final $Res Function(ThemeChangedMode) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDark = null,
  }) {
    return _then(ThemeChangedMode(
      isDark: null == isDark
          ? _self.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class LanguageChanged implements AppState {
  const LanguageChanged({required this.loacal});

  final Locale loacal;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageChangedCopyWith<LanguageChanged> get copyWith =>
      _$LanguageChangedCopyWithImpl<LanguageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageChanged &&
            (identical(other.loacal, loacal) || other.loacal == loacal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loacal);

  @override
  String toString() {
    return 'AppState.languageChanged(loacal: $loacal)';
  }
}

/// @nodoc
abstract mixin class $LanguageChangedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $LanguageChangedCopyWith(
          LanguageChanged value, $Res Function(LanguageChanged) _then) =
      _$LanguageChangedCopyWithImpl;
  @useResult
  $Res call({Locale loacal});
}

/// @nodoc
class _$LanguageChangedCopyWithImpl<$Res>
    implements $LanguageChangedCopyWith<$Res> {
  _$LanguageChangedCopyWithImpl(this._self, this._then);

  final LanguageChanged _self;
  final $Res Function(LanguageChanged) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loacal = null,
  }) {
    return _then(LanguageChanged(
      loacal: null == loacal
          ? _self.loacal
          : loacal // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

// dart format on
