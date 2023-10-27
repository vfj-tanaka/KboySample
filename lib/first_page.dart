import 'package:flutter/material.dart';
import 'package:kboy_sample/second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['【Flutter超入門2022】⑥今までの復習！Youtubeアプリのトレース', 'SwiftUIについて', 'RxSwift入門'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('凡人プログラマーKBOY',
            style: TextStyle(
              fontWeight: FontWeight.bold,
                color: Colors.black
            ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.ondemand_video_outlined),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 120,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                      'https://i.ytimg.com/vi/I1brIgebG84/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDNXLKtwXcRYlcsxs0rg9BSl0fDxw'
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        entries[index],
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                        ),
                        maxLines: 3,
                      ),
                          Text(
                              '1053回視聴　5日前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                          ),
                        ]
              ),
                    ),
                  ],
                )
              );
            }
        ),
      ),
    );
  }
}