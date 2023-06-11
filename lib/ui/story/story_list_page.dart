import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'story_list_intent.dart';
import 'story_list_state.dart';
import 'story_list_view_model.dart';

class StoryListPage extends ConsumerStatefulWidget {
  const StoryListPage({super.key});

  @override
  ConsumerState<StoryListPage> createState() => _StoryListPageState();
}

class _StoryListPageState extends ConsumerState<StoryListPage> {
  @override
  void initState() {
    super.initState();
    ref.read(storyListViewModelProvider.notifier).dispatcher(GetStoryList());
  }

  @override
  Widget build(BuildContext context) {
    final StoryListState state = ref.watch(storyListViewModelProvider);

    final void Function(StoryListIntent indent) dispatcher =
        ref.read(storyListViewModelProvider.notifier).dispatcher;

    if (state is StoryListLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Stories',
          ),
        ),
        body: Container(),
      );
    }
    print(state);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stories',
        ),
      ),
      body: Container(),
    );
  }
}
