import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/story_remote_data_source.dart';

final Provider<StoryRepository> storyRepositoryProvider =
    Provider<StoryRepository>(
  (ProviderRef<StoryRepository> ref) =>
      StoryRepository(ref.watch(storyRemoteDataSourceProvider)),
);

// 서버로 부터 받아온 Entity를 앱에서 사용하는 형태인 Model로 변경합니다.

class StoryRepository {
  final StoryRemoteDataSource _storyRemoteDataSource;

  StoryRepository(this._storyRemoteDataSource);

  Future<List<int>> getTopStories() => _storyRemoteDataSource.getTopStories();
}
