import 'package:get_it/get_it.dart';
import 'bloc_registry.dart';
import 'repository_registry.dart';
import 'services_registry.dart';
import 'use_case_registry.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //! ----- services -----
  final ServicesRegistry servicesRegistry = ServicesRegistry();
  servicesRegistry.registerAnimalServices();

  //! ----- repositories -----
  final RepositoryRegistry repositoryRegistry = RepositoryRegistry();
  repositoryRegistry.registerAnimalRepositories();

  //! ----- use cases -----
  final UseCaseRegistry useCaseRegistry = UseCaseRegistry();
  useCaseRegistry.registerAnimalUseCases();

  //! ----- blocs -----
  final BlocRegistry blocRegistry = BlocRegistry();
  blocRegistry.registerAnimalBlocs();
}
