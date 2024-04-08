import 'package:flutter/material.dart';
import 'package:sports_news_api/models/news_response_model.dart';
import 'package:sports_news_api/utils/api_client.dart';

class SampleView extends StatefulWidget {
  const SampleView({super.key});

  @override
  State<SampleView> createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  NewsResponseModel newsResponse = NewsResponseModel();
  bool isLoading = true;
  getData() async {
    newsResponse = await getNewsAPi();
    setState(() {
      isLoading = false;
    });
    print('-----------object----------');
    print(getNewsAPi());
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: newsResponse.articles?.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.network(
                              newsResponse!.articles![index].image.toString()),
                          Text(newsResponse!.articles![index].title.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text(
                              newsResponse!.articles![index].content.toString())
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
    );
  }
}
