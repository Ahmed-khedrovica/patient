import 'package:json_annotation/json_annotation.dart';

part 'send_code_request.g.dart';

@JsonSerializable()
class SendCodeRequest {
  final String email;

  SendCodeRequest({
    required this.email,
  });

  factory SendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendCodeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendCodeRequestToJson(this);
}