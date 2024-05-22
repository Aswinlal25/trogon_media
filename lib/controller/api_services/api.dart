import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:machine_task/model/courses_model/model.dart';

class ApiServices {
  static const String baseUrl =
      'https://trogon.info/tutorpro/edspark/api/my_course';
  static const String authToken =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';

  Future<ApiResponse> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl?auth_token=$authToken'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return ApiResponse.fromJson(data);
      } else {
        return ApiResponse(
          status: response.statusCode,
          message: 'Failed to load data: ${response.reasonPhrase}',
          data: {},
        );
      }
    } catch (e) {
      return ApiResponse(
        status: -1,
        message: 'Error: $e',
        data: {},
      );
    }
  }
}
