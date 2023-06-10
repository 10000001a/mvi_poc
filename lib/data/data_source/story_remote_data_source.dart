import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../base/dio_client.dart';

part 'story_remote_data_source.g.dart';

final Provider<StoryRemoteDataSource> storyRemoteDataSourceProvider =
    Provider<StoryRemoteDataSource>(
  (ProviderRef<StoryRemoteDataSource> ref) =>
      StoryRemoteDataSource(ref.read(dioProvider)),
);

@RestApi()
abstract class StoryRemoteDataSource {
  factory StoryRemoteDataSource(Dio dio) = _StoryRemoteDataSource;

  @GET('/topstories.json')
  Future<List<int>> getTopStories();
}
