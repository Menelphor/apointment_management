import 'package:apointment_management/models/appointment_state.dart';
import 'package:graphql/client.dart';


class AppointmentService {
  AppointmentService(this.graphqlClient);
  final GraphQLClient graphqlClient;

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
      date
      appointmentState
      additionalInformation
      durationMinutes
    }
  }
}
''';

  Future<QueryResult<Object?>> getAppointments(int offset) async =>
      await graphqlClient.query(QueryOptions(
        document: gql(allApointments),
        variables: {"offset": offset, "first": 10},
      ));

  ObservableQuery<Object?> watchAppointmentDetail(String id) =>
      graphqlClient.watchQuery(
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
    graphqlClient.mutate(
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
