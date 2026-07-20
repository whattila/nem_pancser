import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_access_data.model.g.dart';
part 'user_access_data.model.freezed.dart';

@freezed
abstract class UserAccessData with _$UserAccessData {
  const factory UserAccessData({
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "access_token") required String accessToken,
  }) = _UserAccessData;

  factory UserAccessData.fromJson(Map<String, dynamic> json) => _$UserAccessDataFromJson(json);
}