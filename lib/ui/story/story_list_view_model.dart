import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_case/get_stories_use_case.dart';
import 'story_list_intent.dart';
import 'story_list_state.dart';

final AutoDisposeStateNotifierProvider<StoryListViewModel, StoryListState>
    storyListViewModelProvider =
    StateNotifierProvider.autoDispose<StoryListViewModel, StoryListState>(
  (Ref ref) => StoryListViewModel(
    ref.watch(getStoryListUseCaseProvider),
    StoryListLoading(),
  ),
);

class StoryListViewModel extends StateNotifier<StoryListState> {
  StoryListViewModel(
    this._getStoriesUseCase,
    super.state,
  );

  final GetStoryListUseCase _getStoriesUseCase;

  void dispatcher(StoryListIntent indent) {
    switch (indent) {
      case GetStoryList():
        _handleA();
        break;
      case B():
        _handleA();
        break;
      case C():
        _handleA();
        break;
    }
    ;
  }

  Future<void> _handleA() async {
    final List<int> storyListData = await _getStoriesUseCase.execute();
    state = StoryListData(storyListData);
  }

  void _handleB() {}
  void _handleC() {}
}
