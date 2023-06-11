import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/story_repository.dart';

final Provider<GetStoryListUseCase> getStoryListUseCaseProvider = Provider(
  (ProviderRef<Object?> ref) =>
      GetStoryListUseCase(ref.watch(storyRepositoryProvider)),
);

class GetStoryListUseCase {
  final StoryRepository _storyRepository;

  GetStoryListUseCase(this._storyRepository);

  Future<List<int>> execute() async => _storyRepository.getTopStories();
}
