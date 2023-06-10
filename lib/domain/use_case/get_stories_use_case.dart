import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/story_repository.dart';

final Provider<GetStoriesUseCase> getStoriesUseCaseProvider = Provider(
  (ProviderRef<Object?> ref) =>
      GetStoriesUseCase(ref.watch(storyRepositoryProvider)),
);

class GetStoriesUseCase {
  final StoryRepository _storiesRepository;

  GetStoriesUseCase(this._storiesRepository);

  Future<List<int>> execute() async => _storiesRepository.getTopStories();
}
