import 'package:http/http.dart' as http;
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:youtube_app/data/network/youtube_data_source.dart';
import 'package:youtube_app/data/repository/app_repository.dart';
import 'package:youtube_app/ui/search/search.dart';

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client)
    ..registerFactory((container) => YoutubeDataSource(container.resolve()))
    ..registerFactory((container) => YoutubeRepository(container.resolve()))
    ..registerFactory((container) => SearchBloc(container.resolve()));
}
