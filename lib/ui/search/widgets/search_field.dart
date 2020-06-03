import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_app/ui/search/search.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection =
            TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search Videos',
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(.5),
          )),
      onSubmitted: (query) {
        BlocProvider.of<SearchBloc>(context).onSearchInitiated(query);
      },
      controller: _controller,
      focusNode: _focusNode,
    );
  }
}
