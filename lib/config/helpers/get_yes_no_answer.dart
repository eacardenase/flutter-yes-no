import 'package:dio/dio.dart';

import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  static final _dio = Dio();

  GetYesNoAnswer._();

  static Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);

    return Message(
      text: yesNoModel.answer,
      fromWho: FromWho.her,
      imageUrl: yesNoModel.image,
    );
  }
}
