import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/models/message.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_service.g.dart';

@RestApi(baseUrl: 'https://api.rabbaanii.sch.id/')
abstract class PaymentService {
  factory PaymentService(Dio dio, {String baseUrl}) =
  _PaymentService;

  @GET('/')
  Future<HttpResponse> getPayment(
      @Query('studentId') String studentId,
      );
}
