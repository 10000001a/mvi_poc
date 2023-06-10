import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_case/get_stories_use_case.dart';
import 'story_list_intent.dart';
import 'story_list_state.dart';

final AutoDisposeStateNotifierProvider<StoryListViewModel, StoryListState>
    storyListViewModelProvider =
    StateNotifierProvider.autoDispose<StoryListViewModel, StoryListState>(
  (Ref ref) => StoryListViewModel(
    ref.watch(getStoriesUseCaseProvider),
    StoryListData(<int>[]),
  ),
);

class StoryListViewModel extends StateNotifier<StoryListState> {
  StoryListViewModel(
    this._getStoriesUseCase,
    super.state,
  );

  final GetStoriesUseCase _getStoriesUseCase;

  void dispatch(StoryListIntent indent) {
    switch (indent) {
      case A():
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

  void _handleA() {}
  void _handleB() {}
  void _handleC() {}
}
