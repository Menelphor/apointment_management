import 'package:apointment_management/service/appointment_service.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import 'config/base_config.dart';

class DependencyInjection {
  static void registerSingletons() {
    GetIt.I.registerSingletonAsync<HiveStore>(() => HiveStore.open());
    GetIt.I.registerSingletonWithDependencies<GraphQLClient>(
      () => GraphQLClient(
        cache: GraphQLCache(store: GetIt.I.get()),
        link: HttpLink(
          appointmentGraphqlUrl,
          defaultHeaders: {
            "Dg-Auth": appointmentApiKey,
          },
        ),
      ),
      dependsOn: [HiveStore],
    );
    GetIt.I.registerSingletonWithDependencies<AppointmentService>(
      () => AppointmentService(GetIt.I.get()),
      dependsOn: [GraphQLClient],
    );
  }

  static Future isReady() => Future.wait([
        GetIt.I.isReady<HiveStore>(),
        GetIt.I.isReady<GraphQLClient>(),
        GetIt.I.isReady<AppointmentService>(),
      ]);
}
