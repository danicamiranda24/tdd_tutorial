import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorial/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorial/src/authentication/domain/usecases/create_user.dart';

class MockAuthRepo extends Mock implements AuthenticationRepository {}

void main() {
  late CreateUser usecase;
  late AuthenticationRepository repository;
  registerFallbackValue(Date());

  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });
  test('should call the [AuthRepo.createUser]', () async {
    // Arrange
    when(
      () => repository.createUser(
        createdAt: any(),
        name: any(named: 'name'),
        avatar: any(named: 'avatar'),
      ),
    ).thenAnswer((_) async => Right());

    usecase(CreateUserParams(createdAt: any(), name: 'name', avatar: 'avatar'));
    // Act
    // Assert
  });
}

class Date {
  late DateTime createdAt;
}
