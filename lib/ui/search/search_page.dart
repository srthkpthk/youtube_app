import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:youtube_app/data/model/search/search_item.dart';
import 'package:youtube_app/data/model/search/search_snippet.dart';
import 'package:youtube_app/ui/detail/detail_page.dart';
import 'package:youtube_app/ui/search/search.dart';
import 'package:youtube_app/ui/search/widgets/centered_message.dart';
import 'package:youtube_app/ui/search/widgets/search_bar.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchBloc = kiwi.Container().resolve<SearchBloc>();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _searchBloc,
      child: _buildScaffold(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchBloc.dispose();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
      ),
      body: BlocBuilder(
        bloc: _searchBloc,
        // ignore: missing_return
        builder: (BuildContext context, SearchState state) {
          if (state.isInitial) {
            return CenteredMessage(
                message: 'Search', icon: Icons.ondemand_video);
          }

          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.isSuccessful) {
            _buildResultList(state);
          } else {
            CenteredMessage(message: state.error, icon: Icons.error_outline);
          }
        },
      ),
    );
  }

  Widget _buildResultList(SearchState state) {
    return NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: ListView.builder(
          itemCount: _calculateListItemCount(state),
          controller: _scrollController,
          // ignore: missing_return
          itemBuilder: (BuildContext context, int index) {
            return index >= state.searchResults.length
                ? _buildLoaderList()
                : _buildVideoListItem(state.searchResults[index]);
          },
        ));
  }

  int _calculateListItemCount(SearchState state) {
    return state.hasReachedEndOfResults
        ? state.searchResults.length
        : state.searchResults.length + 1;
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollNotification &&
        _scrollController.position.extentAfter == 0) {
      _searchBloc.fetchNextResultPage();
    }
    return false;
  }

  Widget _buildLoaderList() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildVideoListItem(SearchItem searchItem) {
    return GestureDetector(
      child: _buildVideoListItemCard(searchItem.snippet),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) {
            return DetailPage(
              videoId: searchItem.id.videoId,
            );
          }),
        );
      },
    );
  }

  Widget _buildVideoListItemCard(SearchSnippet snippet) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  snippet.thumbnails.high.url,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              snippet.title,
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              snippet.description,
              style: TextStyle(
                  //
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
