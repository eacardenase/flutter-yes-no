import 'package:dio/dio.dart';

import 'package:yes_no/domain/entities/message.dart';

class GetYesNoAnswer {
  static final _dio = Dio();

  GetYesNoAnswer._();

  static Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    print(response);
    print(response.data);

    throw UnimplementedError();
    // return;
  }
}
