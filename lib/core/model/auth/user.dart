import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
	int? id;
	String? name;
	dynamic phone;
	dynamic image;
	String? email;
	int? role;
	@JsonKey(name: 'email_verified_at') 
	dynamic emailVerifiedAt;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	User({
		this.id, 
		this.name, 
		this.phone, 
		this.image, 
		this.email, 
		this.role, 
		this.emailVerifiedAt, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
	});

	factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

	Map<String, dynamic> toJson() => _$UserToJson(this);
}
