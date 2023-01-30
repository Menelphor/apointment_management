import 'package:apointment_management/service/appointment_service.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import 'config/base_config.dart';

class DependencyInjection {
  static registerSingletons() {
    GetIt.I.registerSingleton<GraphQLClient>(
      GraphQLClient(
        cache: GraphQLCache(store: InMemoryStore()),
        link: HttpLink(
          appointmentGraphqlUrl,
          defaultHeaders: {
            "Dg-Auth": appointmentApiKey,
          },
        ),
      ),
    );

    GetIt.I.registerSingleton<AppointmentService>(
      AppointmentService(GetIt.I.get()),
    );
  }
}
