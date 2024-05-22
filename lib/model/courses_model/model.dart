class Courese {
  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final String countryCode;
  final String userEmail;
  final String email;
  final String gender;
  final String place;
  final String roleId;
  final String roleLabel;
  final String deviceId;
  final String status;
  final String courseId;
  final String courseName;
  final String courseType;
  final String image;
  final String androidVersion;
  final String deviceIdMessage;
  final String noCourseText;
  final String noCourseImage;
  final String contactEmail;
  final String contactPhone;
  final String contactWhatsapp;
  final String contactAddress;
  final String contactAbout;
  final String zoomId;
  final String zoomPassword;
  final String zoomApiKey;
  final String zoomSecretKey;
  final String zoomWebDomain;
  final String token;
  final String privacyPolicy;
  final String privacyPolicyText;
  final int coins;

  Courese({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.countryCode,
    required this.userEmail,
    required this.email,
    required this.gender,
    required this.place,
    required this.roleId,
    required this.roleLabel,
    required this.deviceId,
    required this.status,
    required this.courseId,
    required this.courseName,
    required this.courseType,
    required this.image,
    required this.androidVersion,
    required this.deviceIdMessage,
    required this.noCourseText,
    required this.noCourseImage,
    required this.contactEmail,
    required this.contactPhone,
    required this.contactWhatsapp,
    required this.contactAddress,
    required this.contactAbout,
    required this.zoomId,
    required this.zoomPassword,
    required this.zoomApiKey,
    required this.zoomSecretKey,
    required this.zoomWebDomain,
    required this.token,
    required this.privacyPolicy,
    required this.privacyPolicyText,
    required this.coins,
  });

  factory Courese.fromJson(Map<String, dynamic> json) {
    return Courese(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'] ?? '',
      phone: json['phone'],
      countryCode: json['country_code'],
      userEmail: json['user_email'] ?? '',
      email: json['email'],
      gender: json['gender'] ?? '',
      place: json['place'] ?? '',
      roleId: json['role_id'],
      roleLabel: json['role_label'],
      deviceId: json['device_id'] ?? '',
      status: json['status'],
      courseId: json['course_id'],
      courseName: json['course_name'],
      courseType: json['course_type'] ?? '',
      image: json['image'],
      androidVersion: json['android_version'] ?? '',
      deviceIdMessage: json['device_id_message'] ?? '',
      noCourseText: json['no_course_text'],
      noCourseImage: json['no_course_image'],
      contactEmail: json['contact_email'],
      contactPhone: json['contact_phone'],
      contactWhatsapp: json['contact_whatsapp'],
      contactAddress: json['contact_address'],
      contactAbout: json['contact_about'],
      zoomId: json['zoom_id'] ?? '',
      zoomPassword: json['zoom_password'] ?? '',
      zoomApiKey: json['zoom_api_key'],
      zoomSecretKey: json['zoom_secret_key'],
      zoomWebDomain: json['zoom_web_domain'],
      token: json['token'] ?? '',
      privacyPolicy: json['privacy_policy'],
      privacyPolicyText: json['privacy_policy_text'],
      coins: json['coins'],
    );
  }
}

class Subject {
  final String id;
  final String title;
  final String courseId;
  final String order;
  final String thumbnail;
  final String background;
  final String icon;
  final String free;
  final String? instructorId;

  Subject({
    required this.id,
    required this.title,
    required this.courseId,
    required this.order,
    required this.thumbnail,
    required this.background,
    required this.icon,
    required this.free,
    this.instructorId,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      title: json['title'],
      courseId: json['course_id'],
      order: json['order'],
      thumbnail: json['thumbnail'],
      background: json['background'],
      icon: json['icon'],
      free: json['free'],
      instructorId: json['instructor_id'],
    );
  }
}

class ApiResponse {
  final int status;
  final String message;
  final Map<String, dynamic> data;

  ApiResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'],
      message: json['message'],
      data: json['data'],
    );
  }
}
