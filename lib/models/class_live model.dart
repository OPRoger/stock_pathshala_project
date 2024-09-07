class LiveClassModel {
  LiveClassModel({
    required this.status,
    required this.data,
    required this.message,
  });

  final bool? status;
  final Data? data;
  final String? message;

  factory LiveClassModel.fromJson(Map<String, dynamic> json){
    return LiveClassModel(
      status: json["status"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      message: json["message"],
    );
  }

}

class Data {
  Data({
    required this.data,
    required this.pagination,
  });

  final List<Datum> data;
  final Pagination? pagination;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      pagination: json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]),
    );
  }

}

class Datum {
  Datum({
    required this.id,
    required this.categoryId,
    required this.levelId,
    required this.teachers,
    required this.liveClassField,
    required this.sectionIds,
    required this.dynamicField,
    required this.dynamicIds,
    required this.languageId,
    required this.userId,
    required this.batchTitle,
    required this.batchId,
    required this.batchStartDate,
    required this.moduleId,
    required this.dynamicFaq,
    required this.staticFaq,
    required this.index,
    required this.title,
    required this.description,
    required this.slug,
    required this.descriptionWeb,
    required this.shortDescription,
    required this.startDatetime,
    required this.endDatetime,
    required this.duration,
    required this.meetingLink,
    required this.hostLink,
    required this.moderatorLink,
    required this.participantLink,
    required this.image,
    required this.preview,
    required this.thumbnail,
    required this.schedule,
    required this.totalClasses,
    required this.avgRating,
    required this.ratingCount,
    required this.commentCount,
    required this.price,
    required this.isHome,
    required this.isFree,
    required this.isLive,
    required this.isDoubt,
    required this.isWorkshop,
    required this.isActive,
    required this.recordingUrl,
    required this.category,
    required this.language,
    required this.level,
    required this.createdAt,
  });

  final int? id;
  final int? categoryId;
  final int? levelId;
  final Teachers? teachers;
  final dynamic liveClassField;
  final dynamic sectionIds;
  final dynamic dynamicField;
  final dynamic dynamicIds;
  final int? languageId;
  final int? userId;
  final dynamic batchTitle;
  final dynamic batchId;
  final dynamic batchStartDate;
  final dynamic moduleId;
  final dynamic dynamicFaq;
  final List<StaticFaq> staticFaq;
  final int? index;
  final String? title;
  final String? description;
  final String? slug;
  final String? descriptionWeb;
  final String? shortDescription;
  final DateTime? startDatetime;
  final DateTime? endDatetime;
  final int? duration;
  final dynamic meetingLink;
  final String? hostLink;
  final String? moderatorLink;
  final String? participantLink;
  final String? image;
  final String? preview;
  final String? thumbnail;
  final String? schedule;
  final String? totalClasses;
  final int? avgRating;
  final int? ratingCount;
  final int? commentCount;
  final int? price;
  final int? isHome;
  final int? isFree;
  final int? isLive;
  final int? isDoubt;
  final int? isWorkshop;
  final int? isActive;
  final dynamic recordingUrl;
  final Category? category;
  final Language? language;
  final Level? level;
  final DateTime? createdAt;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      id: json["id"],
      categoryId: json["category_id"],
      levelId: json["level_id"],
      teachers: json["teachers"] == null ? null : Teachers.fromJson(json["teachers"]),
      liveClassField: json["live_class_field"],
      sectionIds: json["sectionIds"],
      dynamicField: json["dynamic_field"],
      dynamicIds: json["dynamicIds"],
      languageId: json["language_id"],
      userId: json["user_id"],
      batchTitle: json["batch_title"],
      batchId: json["batch_id"],
      batchStartDate: json["batch_start_date"],
      moduleId: json["module_id"],
      dynamicFaq: json["dynamic_faq"],
      staticFaq: json["static_faq"] == null ? [] : List<StaticFaq>.from(json["static_faq"]!.map((x) => StaticFaq.fromJson(x))),
      index: json["index"],
      title: json["title"],
      description: json["description"],
      slug: json["slug"],
      descriptionWeb: json["description_web"],
      shortDescription: json["short_description"],
      startDatetime: DateTime.tryParse(json["start_datetime"] ?? ""),
      endDatetime: DateTime.tryParse(json["end_datetime"] ?? ""),
      duration: json["duration"],
      meetingLink: json["meeting_link"],
      hostLink: json["host_link"],
      moderatorLink: json["moderator_link"],
      participantLink: json["participant_link"],
      image: json["image"],
      preview: json["preview"],
      thumbnail: json["thumbnail"],
      schedule: json["schedule"],
      totalClasses: json["total_classes"],
      avgRating: json["avg_rating"],
      ratingCount: json["rating_count"],
      commentCount: json["comment_count"],
      price: json["price"],
      isHome: json["is_home"],
      isFree: json["is_free"],
      isLive: json["is_live"],
      isDoubt: json["is_doubt"],
      isWorkshop: json["is_workshop"],
      isActive: json["is_active"],
      recordingUrl: json["recording_url"],
      category: json["category"] == null ? null : Category.fromJson(json["category"]),
      language: json["language"] == null ? null : Language.fromJson(json["language"]),
      level: json["level"] == null ? null : Level.fromJson(json["level"]),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
    );
  }

}

class Category {
  Category({
    required this.id,
    required this.title,
  });

  final int? id;
  final String? title;

  factory Category.fromJson(Map<String, dynamic> json){
    return Category(
      id: json["id"],
      title: json["title"],
    );
  }

}

class Language {
  Language({
    required this.id,
    required this.languageName,
  });

  final int? id;
  final String? languageName;

  factory Language.fromJson(Map<String, dynamic> json){
    return Language(
      id: json["id"],
      languageName: json["language_name"],
    );
  }

}

class Level {
  Level({
    required this.id,
    required this.level,
  });

  final int? id;
  final String? level;

  factory Level.fromJson(Map<String, dynamic> json){
    return Level(
      id: json["id"],
      level: json["level"],
    );
  }

}

class StaticFaq {
  StaticFaq({
    required this.id,
    required this.question,
    required this.answer,
  });

  final int? id;
  final String? question;
  final String? answer;

  factory StaticFaq.fromJson(Map<String, dynamic> json){
    return StaticFaq(
      id: json["id"],
      question: json["question"],
      answer: json["answer"],
    );
  }

}

class Teachers {
  Teachers({
    required this.userId,
    required this.name,
    required this.totalExperience,
    required this.profileImage,
    required this.expertise,
    required this.categoryId,
    required this.tradingStyle,
    required this.rating,
    required this.studentsLearn,
    required this.teachingHours,
    required this.languageId,
    required this.bio,
  });

  final int? userId;
  final String? name;
  final int? totalExperience;
  final String? profileImage;
  final String? expertise;
  final int? categoryId;
  final String? tradingStyle;
  final int? rating;
  final int? studentsLearn;
  final int? teachingHours;
  final int? languageId;
  final String? bio;

  factory Teachers.fromJson(Map<String, dynamic> json){
    return Teachers(
      userId: json["user_id"],
      name: json["name"],
      totalExperience: json["total_experience"],
      profileImage: json["profile_image"],
      expertise: json["expertise"],
      categoryId: json["category_id"],
      tradingStyle: json["trading_style"],
      rating: json["rating"],
      studentsLearn: json["students_learn"],
      teachingHours: json["teaching_hours"],
      languageId: json["language_id"],
      bio: json["bio"],
    );
  }

}

class Pagination {
  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
  });

  final int? total;
  final int? count;
  final int? perPage;
  final int? currentPage;
  final int? lastPage;

  factory Pagination.fromJson(Map<String, dynamic> json){
    return Pagination(
      total: json["total"],
      count: json["count"],
      perPage: json["per_page"],
      currentPage: json["current_page"],
      lastPage: json["last_page"],
    );
  }

}
