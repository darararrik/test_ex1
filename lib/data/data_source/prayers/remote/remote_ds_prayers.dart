import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/data/utils/app_defaults.dart';

part 'remote_ds_prayers.g.dart';

@RestApi()
abstract class RemoteDSPrayers {
  factory RemoteDSPrayers(Dio dio, {String? baseUrl}) = _RemoteDSPrayers;

  @POST("/columns/{columnId}/prayers")
  @Extra({AppDefaults.requiresAuth: true})
  Future<HttpResponse> createPrayerByColumnId(
    @Path("columnId") int columnId,
    @Body() CreatedPrayerDTO prayer,
  );

  @GET("/columns/{columnId}/prayers")
  @Extra({AppDefaults.requiresAuth: true})
  Future<List<PrayerDTO>> getPrayersByColumnId(@Path("columnId") int columnId);

  @GET("/subscribed-prayers")
  @Extra({AppDefaults.requiresAuth: true})
  Future<List<PrayerDTO>> getSubscribedPrayers();

  @POST("/prayers/{prayerId}/subscribe")
  @Extra({AppDefaults.requiresAuth: true})
  Future<HttpResponse> subscribe(@Path("prayerId") int prayerId);

  @DELETE("/prayers/{prayerId}/subscribe")
  @Extra({AppDefaults.requiresAuth: true})
  Future<HttpResponse> unsubscribe(@Path("prayerId") int prayerId);

  @POST("/prayers/{prayerId}/do")
  @Extra({AppDefaults.requiresAuth: true})
  Future<HttpResponse> doPrayerById(@Path("prayerId") int prayerId);

  @GET("/prayers/{prayerId}")
  @Extra({AppDefaults.requiresAuth: true})
  Future<PrayerDTO> getPrayerById(@Path("prayerId") int prayerId);

  @POST("/prayers/{prayerId}")
  @Extra({AppDefaults.requiresAuth: true})
  Future<PrayerDTO> deletePrayerById(@Path("prayerId") int prayerId);
}
