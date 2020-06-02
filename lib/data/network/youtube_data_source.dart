import 'package:http/http.dart' as http;
import 'package:youtube_app/data/model/search/model_search.dart';
import 'package:youtube_app/data/network/api_key.dart';

const int maxSearchResult = 5;

class YoutubeDataSource {
  final http.Client client;

  final String _baseUrl =
      "GET https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=$maxSearchResult&type=videos&key=$API_KEY";

  YoutubeDataSource(this.client);

  Future<YoutubeSearchResult> searchVideos(
      {String query, String pageToken = ''}) async {}
}
