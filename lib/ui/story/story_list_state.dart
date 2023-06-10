sealed class StoryListState {}

class StoryListLoading extends StoryListState {}

class StoryListError extends StoryListState {}

class StoryListData extends StoryListState {
  final List<int> storyIdList;

  StoryListData(this.storyIdList);
}
