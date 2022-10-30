import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @Default('') String uid,
    @Default('') String name,
    @Default('') String email,
    @Default('') String photoUrl,
    @Default('') String status,
    @Default('') String updateTime,
    @Default('') String creationTime,
    @Default('') String lastSignInTime,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
