
package Paws::WorkLink::CreateFleet;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has OptimizeForEndUserLocation => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createFleet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::CreateFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::CreateFleet - Arguments for method CreateFleet on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $CreateFleetResponse = $worklink->CreateFleet(
      FleetName                  => 'MyFleetName',
      DisplayName                => 'MyDisplayName',    # OPTIONAL
      OptimizeForEndUserLocation => 1,                  # OPTIONAL
    );

    # Results:
    my $FleetArn = $CreateFleetResponse->FleetArn;

    # Returns a L<Paws::WorkLink::CreateFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/CreateFleet>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The fleet name to display.



=head2 B<REQUIRED> FleetName => Str

A unique name for the fleet.



=head2 OptimizeForEndUserLocation => Bool

The option to optimize for better performance by routing traffic
through the closest AWS Region to users, which may be outside of your
home Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

