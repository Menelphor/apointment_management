import 'package:appointment_management/models/appointment.dart';
import 'package:appointment_management/models/appointment_state.dart';
import 'package:appointment_management/models/company.dart';
import 'package:graphql/client.dart';

class AppointmentService {
  AppointmentService(this.graphQLClient);
  final GraphQLClient graphQLClient;

  static const allAppointmentsQuery = '''
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

  static const mutateAppointmentQuery = '''
mutation MyMutation {
  updateAppointment(input: {filter: {id: \$id}, set: {additionalInformation: \$additionalInformation, appointmentState: \$appointmentState}}) {
    appointment {
      id
    }
  }
}
''';

  static const createAppointmentQuery = '''
mutation CreateAppointmentForCompany(\$id: [ID!], \$date: DateTime!, \$durationMinutes:Int!) {
  updateCompany(input: {filter: {id: \$id}, set: {appointment: {appointmentState: none, date: \$date, durationMinutes: \$durationMinutes}}}) {
    company {
      name
      appointment {
        additionalInformation
        appointmentState
        date
        durationMinutes
        company {
          name
        }
      }
    }
  }
}
''';

  static const getCompaniesQuery = '''
query Companies {
  queryCompany {
    id
    city
    contact
    country
    houseNumber
    name
    phoneNumber
    postCode
    street
  }
}
''';

  Future<List<Appointment>> getAppointments(int offset) async {
    final result = await graphQLClient.query(QueryOptions(
      document: gql(allAppointmentsQuery),
      variables: {"offset": offset, "first": 10},
    ));

    final resultData = result.data?["queryAppointment"];
    if (resultData != null && resultData is List) {
      return resultData
          .map(
            (dynamic e) => Appointment.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    throw const FormatException();
  }

  // ObservableQuery<Object?> watchAppointmentDetail(String id) =>
  //     graphQLClient.watchQuery(
  //       WatchQueryOptions(
  //         document: gql(appointmentDetail),
  //         variables: {"id": id},
  //       ),
  //     );

  Future patchAppointment(
    String id,
    AppointmentState state,
    String? additionalInformation,
  ) async {
    graphQLClient.mutate(
      MutationOptions(
        document: gql(mutateAppointmentQuery),
        variables: {
          "id": id,
          "state": state.name,
          "additionalInformation": additionalInformation,
        },
      ),
    );
  }

  Future<List<Company>> getCompanies() async {
    final result = await graphQLClient.query(
      QueryOptions(document: gql(getCompaniesQuery)),
    );
    final resultData = result.data?["queryCompany"];
    if (resultData != null && resultData is List) {
      return resultData
          .map(
            (dynamic e) => Company.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    throw const FormatException();
  }

  Future createAppointment(
    String companyId,
    int durationMinutes,
    DateTime date,
  ) =>
      graphQLClient.mutate(
        MutationOptions(
          document: gql(createAppointmentQuery),
          variables: {
            "id": companyId,
            "date": date.toIso8601String(),
            "durationMinutes": durationMinutes,
          },
        ),
      );
}
