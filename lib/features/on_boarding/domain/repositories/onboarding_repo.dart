import 'package:dartz/dartz.dart';

import '../../../../core/network/abstract/failure.dart';
import '../../../../core/network/model/response_model.dart';

abstract class OnBoardingRepo {
  Future<Either<Failure, ResponseModel>> cacheNew();
  Future<Either<Failure, ResponseModel>> getNew();
}
