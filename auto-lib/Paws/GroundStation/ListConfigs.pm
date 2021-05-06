
package Paws::GroundStation::ListConfigs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::ListConfigsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListConfigs - Arguments for method ListConfigs on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigs on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigs.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListConfigsResponse = $groundstation->ListConfigs(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ConfigList = $ListConfigsResponse->ConfigList;
    my $NextToken  = $ListConfigsResponse->NextToken;

    # Returns a L<Paws::GroundStation::ListConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListConfigs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of C<Configs> returned.



=head2 NextToken => Str

Next token returned in the request of a previous C<ListConfigs> call.
Used to get the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigs in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

