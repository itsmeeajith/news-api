import 'package:dio/dio.dart';

import '../models/news_response_model.dart';

final dio = Dio();

Future<NewsResponseModel> getNewsAPi() async {
  Response response = await dio.get(
      'https://gnews.io/api/v4/top-headlines?category=general&lang=en&country=us&max=10&apikey=a81c9b9bf0657f3ce5fab98b746abb6e');

  NewsResponseModel newsResponseModel =
      NewsResponseModel.fromJson(response.data);
  print(response.data);

  return newsResponseModel;
  // The below request is the same as above.
}
