import 'package:apointment_management/models/appointment.dart';
import 'package:apointment_management/models/appointment_state.dart';
import 'package:graphql/client.dart';

class AppointmentService {
  AppointmentService();
  // final GraphQLClient graphqlClient;
  final graphQLClient = GraphQLClient(
    cache: GraphQLCache(store: InMemoryStore()),
    link: HttpLink(
      "https://nameless-brook-400132.eu-central-1.aws.cloud.dgraph.io/graphql",
      defaultHeaders: {
        "Dg-Auth": "Mjg4N2I1N2QyODgyMTViMDcyZTYyNzQ1OGVmMDA2ZGE=",
      },
    ),
  );
  // appointmentService = AppointmentService(graphQLClient);

  static const allApointments = '''
query GetAppointments(\$offset: Int, \$first: Int) {
  queryAppointment(
    first: \$first
    order: {asc: date}
    filter: {date: {ge: "2023-01-30"}}
    offset: \$offset
  ) {
    appointmentState
    company {
      city
      contact
      country
      houseNumber
      id
      name
      phoneNumber
      postCode
      street
    }
    date
    durationMinutes
    id
  }
}
''';

  static const appointmentDetail = '''
subscription AppointmentSubscription {
  getAppointment(id: \$id) {
    appointmentState
    company {
      city
      contact
      country
      houseNumber
      id
      name
      phoneNumber
      postCode
      street
    }
    date
    durationMinutes
    id
  }
}
''';

  static const mutateAppointment = '''
mutation MyMutation {
  updateAppointment(input: {filter: {id: \$id}, set: {additionalInformation: \$additionalInformation, appointmentState: \$appointmentState}}) {
    appointment {
      id
    }
  }
}
''';

  Future<List<Appointment>> getAppointments(int offset) async {
    final result = await graphQLClient.query(QueryOptions(
      document: gql(allApointments),
      variables: {"offset": offset, "first": 10},
    ));

    final resultData = result.data?["queryAppointment"];
    if (resultData != null && resultData is List) {
      return resultData.map((e) {
        if (e is Map<String, dynamic>) {
          return Appointment.fromJson(e);
        }
        throw const FormatException();
      }).toList();
    }
    throw const FormatException();
  }

  ObservableQuery<Object?> watchAppointmentDetail(String id) =>
      graphQLClient.watchQuery(
        WatchQueryOptions(
          document: gql(appointmentDetail),
          variables: {"id": id},
        ),
      );

  Future patchAppointment(
    String id,
    AppointmentState state,
    String? additionalInformation,
  ) async {
    graphQLClient.mutate(
      MutationOptions(
        document: gql(mutateAppointment),
        variables: {
          "id": id,
          "state": state.name,
          "additionalInformation": additionalInformation,
        },
      ),
    );
  }
}
