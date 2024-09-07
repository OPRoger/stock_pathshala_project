// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

OtpModel welcomeFromJson(String str) => OtpModel.fromJson(json.decode(str));

String welcomeToJson(OtpModel data) => json.encode(data.toJson());

class OtpModel {
  bool status;
  String message;
  bool isRegister;
  String token;
  Data data;

  OtpModel({
    required this.status,
    required this.message,
    required this.isRegister,
    required this.token,
    required this.data,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
    status: json["status"],
    message: json["message"],
    isRegister: json["is_register"],
    token: json["token"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "is_register": isRegister,
    "token": token,
    "data": data.toJson(),
  };
}

class Data {
  int id;
  dynamic name;
  dynamic email;
  String mobileNo;
  String profileImage;
  dynamic gender;
  dynamic active;
  dynamic referredBy;
  String referralCode;
  dynamic dob;
  dynamic referralAmount;
  int totalPoints;
  int languageId;
  Language language;
  dynamic levelId;
  dynamic level;
  List<dynamic> tags;
  List<Category> categories;
  int freeLiveClassCount;
  dynamic newsletterNotify;
  int isPro;
  int isTrial;
  dynamic proExpiredAt;
  dynamic pushNotify;
  DateTime lastLogin;
  List<dynamic> allUserSubscription;
  NavigationFlow navigationFlow;
  int totalJoined;
  int totalRegister;
  DateTime createdAt;

  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.mobileNo,
    required this.profileImage,
    required this.gender,
    required this.active,
    required this.referredBy,
    required this.referralCode,
    required this.dob,
    required this.referralAmount,
    required this.totalPoints,
    required this.languageId,
    required this.language,
    required this.levelId,
    required this.level,
    required this.tags,
    required this.categories,
    required this.freeLiveClassCount,
    required this.newsletterNotify,
    required this.isPro,
    required this.isTrial,
    required this.proExpiredAt,
    required this.pushNotify,
    required this.lastLogin,
    required this.allUserSubscription,
    required this.navigationFlow,
    required this.totalJoined,
    required this.totalRegister,
    required this.createdAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    mobileNo: json["mobile_no"],
    profileImage: json["profile_image"],
    gender: json["gender"],
    active: json["active"],
    referredBy: json["referred_by"],
    referralCode: json["referral_code"],
    dob: json["dob"],
    referralAmount: json["referral_amount"],
    totalPoints: json["total_points"],
    languageId: json["language_id"],
    language: Language.fromJson(json["language"]),
    levelId: json["level_id"],
    level: json["level"],
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    freeLiveClassCount: json["free_live_class_count"],
    newsletterNotify: json["newsletter_notify"],
    isPro: json["is_pro"],
    isTrial: json["is_trial"],
    proExpiredAt: json["pro_expired_at"],
    pushNotify: json["push_notify"],
    lastLogin: DateTime.parse(json["last_login"]),
    allUserSubscription: List<dynamic>.from(json["all_user_subscription"].map((x) => x)),
    navigationFlow: NavigationFlow.fromJson(json["navigation_flow"]),
    totalJoined: json["total_joined"],
    totalRegister: json["total_register"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "mobile_no": mobileNo,
    "profile_image": profileImage,
    "gender": gender,
    "active": active,
    "referred_by": referredBy,
    "referral_code": referralCode,
    "dob": dob,
    "referral_amount": referralAmount,
    "total_points": totalPoints,
    "language_id": languageId,
    "language": language.toJson(),
    "level_id": levelId,
    "level": level,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "free_live_class_count": freeLiveClassCount,
    "newsletter_notify": newsletterNotify,
    "is_pro": isPro,
    "is_trial": isTrial,
    "pro_expired_at": proExpiredAt,
    "push_notify": pushNotify,
    "last_login": lastLogin.toIso8601String(),
    "all_user_subscription": List<dynamic>.from(allUserSubscription.map((x) => x)),
    "navigation_flow": navigationFlow.toJson(),
    "total_joined": totalJoined,
    "total_register": totalRegister,
    "created_at": createdAt.toIso8601String(),
  };
}

class Category {
  int id;
  int index;
  String title;
  String description;
  dynamic tamilTitle;
  dynamic tamilDescription;
  String hindiTitle;
  String? hindiDescription;
  dynamic gujaratiTitle;
  String? gujaratiDescription;
  dynamic teluguTitle;
  dynamic teluguDescription;
  String image;
  String categoryIds;
  int isActive;
  int forBatch;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  Pivot pivot;

  Category({
    required this.id,
    required this.index,
    required this.title,
    required this.description,
    required this.tamilTitle,
    required this.tamilDescription,
    required this.hindiTitle,
    required this.hindiDescription,
    required this.gujaratiTitle,
    required this.gujaratiDescription,
    required this.teluguTitle,
    required this.teluguDescription,
    required this.image,
    required this.categoryIds,
    required this.isActive,
    required this.forBatch,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    index: json["index"],
    title: json["title"],
    description: json["description"],
    tamilTitle: json["tamil_title"],
    tamilDescription: json["tamil_description"],
    hindiTitle: json["hindi_title"],
    hindiDescription: json["hindi_description"],
    gujaratiTitle: json["gujarati_title"],
    gujaratiDescription: json["gujarati_description"],
    teluguTitle: json["telugu_title"],
    teluguDescription: json["telugu_description"],
    image: json["image"],
    categoryIds: json["category_ids"],
    isActive: json["is_active"],
    forBatch: json["for_batch"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    pivot: Pivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "index": index,
    "title": title,
    "description": description,
    "tamil_title": tamilTitle,
    "tamil_description": tamilDescription,
    "hindi_title": hindiTitle,
    "hindi_description": hindiDescription,
    "gujarati_title": gujaratiTitle,
    "gujarati_description": gujaratiDescription,
    "telugu_title": teluguTitle,
    "telugu_description": teluguDescription,
    "image": image,
    "category_ids": categoryIds,
    "is_active": isActive,
    "for_batch": forBatch,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "pivot": pivot.toJson(),
  };
}

class Pivot {
  int userId;
  int categoryId;

  Pivot({
    required this.userId,
    required this.categoryId,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
    userId: json["user_id"],
    categoryId: json["category_id"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "category_id": categoryId,
  };
}

class Language {
  int id;
  String englishLanguageName;
  String languageName;
  int index;
  int isActive;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  Language({
    required this.id,
    required this.englishLanguageName,
    required this.languageName,
    required this.index,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    id: json["id"],
    englishLanguageName: json["english_language_name"],
    languageName: json["language_name"],
    index: json["index"],
    isActive: json["is_active"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "english_language_name": englishLanguageName,
    "language_name": languageName,
    "index": index,
    "is_active": isActive,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class NavigationFlow {
  int id;
  String registerTitle;
  String registerMsg;
  String registerImage;
  String registerButton;
  int registerNavigation;
  int registerTime;
  String joinedTitle;
  String joinedMsg;
  String joinedImage;
  String joinedButton;
  int joinedNavigation;
  int joinedTime;
  String proTitle;
  String proMsg;
  String proImage;
  String proButton;
  int proNavigation;
  int proTime;
  DateTime createdAt;
  DateTime updatedAt;

  NavigationFlow({
    required this.id,
    required this.registerTitle,
    required this.registerMsg,
    required this.registerImage,
    required this.registerButton,
    required this.registerNavigation,
    required this.registerTime,
    required this.joinedTitle,
    required this.joinedMsg,
    required this.joinedImage,
    required this.joinedButton,
    required this.joinedNavigation,
    required this.joinedTime,
    required this.proTitle,
    required this.proMsg,
    required this.proImage,
    required this.proButton,
    required this.proNavigation,
    required this.proTime,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NavigationFlow.fromJson(Map<String, dynamic> json) => NavigationFlow(
    id: json["id"],
    registerTitle: json["register_title"],
    registerMsg: json["register_msg"],
    registerImage: json["register_image"],
    registerButton: json["register_button"],
    registerNavigation: json["register_navigation"],
    registerTime: json["register_time"],
    joinedTitle: json["joined_title"],
    joinedMsg: json["joined_msg"],
    joinedImage: json["joined_image"],
    joinedButton: json["joined_button"],
    joinedNavigation: json["joined_navigation"],
    joinedTime: json["joined_time"],
    proTitle: json["pro_title"],
    proMsg: json["pro_msg"],
    proImage: json["pro_image"],
    proButton: json["pro_button"],
    proNavigation: json["pro_navigation"],
    proTime: json["pro_time"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "register_title": registerTitle,
    "register_msg": registerMsg,
    "register_image": registerImage,
    "register_button": registerButton,
    "register_navigation": registerNavigation,
    "register_time": registerTime,
    "joined_title": joinedTitle,
    "joined_msg": joinedMsg,
    "joined_image": joinedImage,
    "joined_button": joinedButton,
    "joined_navigation": joinedNavigation,
    "joined_time": joinedTime,
    "pro_title": proTitle,
    "pro_msg": proMsg,
    "pro_image": proImage,
    "pro_button": proButton,
    "pro_navigation": proNavigation,
    "pro_time": proTime,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };

}
class LiveClass {
  final String image;
  final String title;
  final String teacher;
  final String time;

  LiveClass({required this.image, required this.title, required this.teacher, required this.time});

  factory LiveClass.fromJson(Map<String, dynamic> json) {
    return LiveClass(
      image: json['image'],
      title: json['title'],
      teacher: json['teacher'],
      time: json['time'],
    );
  }
}
