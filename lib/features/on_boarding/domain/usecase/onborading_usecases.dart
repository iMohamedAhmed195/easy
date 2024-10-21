import 'package:dartz/dartz.dart';

import '../../../../core/network/abstract/failure.dart';
import '../../../../core/network/model/response_model.dart';
import '../repositories/onboarding_repo.dart';

class OnBoardingUsesCases {
  OnBoardingRepo onBoardingRepo;
  OnBoardingUsesCases({required this.onBoardingRepo});
  Future<Either<Failure, ResponseModel>> cacheNew() => onBoardingRepo.cacheNew();
  Future<Either<Failure, ResponseModel>> getNew() => onBoardingRepo.getNew();
}
