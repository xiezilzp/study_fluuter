import 'package:flutter/material.dart';
import 'package:bookworm/model/bw_model_sentence.dart';

class BWTabItemRecommend extends StatefulWidget {
  _BWTabItemRecommendState createState() => _BWTabItemRecommendState();
}

class _BWTabItemRecommendState extends State<BWTabItemRecommend>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sentenceModels.length,
      itemBuilder: _sentenceWidgetBuilder,
    );
  }
}

Widget _sentenceWidgetBuilder(BuildContext context, int index) {
  return Container(
    color: Colors.lightGreen[100],
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Text(sentenceModels[index].sentence,
            style: TextStyle(height: 1.3), textAlign: TextAlign.left),
        SizedBox(height: 8.0),
        Text(
            sentenceModels[index].author +
                '    ' +
                sentenceModels[index].provenance,
            style: TextStyle(height: 1.3),
            textAlign: TextAlign.right)
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    ),
  );
}
