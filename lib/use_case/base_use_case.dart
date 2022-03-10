abstract class Unit {
  const Unit();
}

abstract class BaseUseCase<Unit, T> {
  T call(Unit params);
}
