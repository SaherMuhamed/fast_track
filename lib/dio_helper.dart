import 'package:dio/dio.dart';

class DioHelper {

  var dio = Dio(
    BaseOptions(
      baseUrl: 'http://sahermuhamed8.pythonanywhere.com/',
      receiveDataWhenStatusError: true,
    ),
  );

  Future<Response> loginPostData({required String emailAddress, required String password}) async {
    return await dio.post('/info-verification', queryParameters: {'email': emailAddress, 'pass': password});
  }

  Future<Response> signupPostData({required String parentFullName, required String emailAddress, required String password, required String confirmPassword, required String parentPhoneNumber, required String parentGender, required String childFirstName, required String childLastName, required int childAge, required childClass, required String childID}) async {
    return await dio.post('/add-info', queryParameters: {'full_name': parentFullName, 'email': emailAddress, 'pass': password, 'c_pass': confirmPassword, 'phone': parentPhoneNumber, 'gender': parentGender, 'f_name': childFirstName, 'l_name': childLastName, 'child_age': childAge, 'class': childClass, 'id': childID});
  }
}
