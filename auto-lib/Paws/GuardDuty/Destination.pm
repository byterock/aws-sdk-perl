package Paws::GuardDuty::Destination;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', request_name => 'destinationId', traits => ['NameInRequest'], required => 1);
  has DestinationType => (is => 'ro', isa => 'Str', request_name => 'destinationType', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Destination object:

  $service_obj->Method(Att1 => { DestinationId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationId

=head1 DESCRIPTION

Contains information about a publishing destination, including the ID,
type, and status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

  The unique ID of the publishing destination.


=head2 B<REQUIRED> DestinationType => Str

  The type of resource used for the publishing destination. Currently,
only S3 is supported.


=head2 B<REQUIRED> Status => Str

  The status of the publishing destination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
