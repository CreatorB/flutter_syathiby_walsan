import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rabbaanii_portal/models/wordpress/wp_post.dart';

part 'wp_api_service.g.dart';

@RestApi(baseUrl: 'https://syathiby.id/wp-json/wp/v2')
abstract class WpApiService {
  factory WpApiService(
    Dio dio, {
    String baseUrl,
  }) = _WpApiService;

  @GET('/posts')
  Future<List<WpPost>> getPosts({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('_embed') bool? embed,
    @Query('orderby') String? orderBy,
    @Query('order') String? order,
  });

  @GET('/posts/{id}')
  Future<WpPost> getPost(
    @Path('id') int id, {
    @Query('_embed') bool? embed,
  });

  @GET('/posts')
  Future<List<WpPost>> searchPosts({
    @Query('search') required String search,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('_embed') bool? embed,
  });
}