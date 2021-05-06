
package Paws::Chime::CreateRoom;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoom');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/rooms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateRoomResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateRoom - Arguments for method CreateRoom on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoom on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoom.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateRoomResponse = $chime->CreateRoom(
      AccountId          => 'MyNonEmptyString',
      Name               => 'MySensitiveString',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Room = $CreateRoomResponse->Room;

    # Returns a L<Paws::Chime::CreateRoomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateRoom>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 ClientRequestToken => Str

The idempotency token for the request.



=head2 B<REQUIRED> Name => Str

The room name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoom in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

