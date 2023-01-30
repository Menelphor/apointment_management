import 'package:appointment_management/service/appointment_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

void main() {
  late AppointmentService appointmentService;
  late GraphQLClient graphQLClient;
  setUp(() async {
    graphQLClient = GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: HttpLink(
        "https://nameless-brook-400132.eu-central-1.aws.cloud.dgraph.io/graphql",
        defaultHeaders: {
          "Dg-Auth": "Mjg4N2I1N2QyODgyMTViMDcyZTYyNzQ1OGVmMDA2ZGE=",
        },
      ),
    );
    appointmentService = AppointmentService(graphQLClient);
  });
  test('getAllAppointment', () async {
    final appointments = await appointmentService.getAppointments(0);
    expect(appointments, isNotNull);
    expect(appointments, isNotEmpty);
  });
}
