
package Paws::Chime::ListAttendees;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meetingId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttendees');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{meetingId}/attendees');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListAttendeesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAttendees - Arguments for method ListAttendees on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttendees on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListAttendees.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttendees.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListAttendeesResponse = $chime->ListAttendees(
      MeetingId  => 'MyGuidString',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyString',       # OPTIONAL
    );

    # Results:
    my $Attendees = $ListAttendeesResponse->Attendees;
    my $NextToken = $ListAttendeesResponse->NextToken;

    # Returns a L<Paws::Chime::ListAttendeesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListAttendees>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttendees in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

