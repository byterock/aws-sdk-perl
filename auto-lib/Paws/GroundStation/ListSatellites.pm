
package Paws::GroundStation::ListSatellites;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSatellites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/satellite');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::ListSatellitesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListSatellites - Arguments for method ListSatellites on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSatellites on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListSatellites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSatellites.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListSatellitesResponse = $groundstation->ListSatellites(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListSatellitesResponse->NextToken;
    my $Satellites = $ListSatellitesResponse->Satellites;

    # Returns a L<Paws::GroundStation::ListSatellitesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListSatellites>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of satellites returned.



=head2 NextToken => Str

Next token that can be supplied in the next call to get the next page
of satellites.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSatellites in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

