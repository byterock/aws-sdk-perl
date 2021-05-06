# Generated by default/object.tt
package Paws::SSM::OpsAggregator;
  use Moose;
  has Aggregators => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsAggregator]');
  has AggregatorType => (is => 'ro', isa => 'Str');
  has AttributeName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsFilter]');
  has TypeName => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'Paws::SSM::OpsAggregatorValueMap');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsAggregator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsAggregator object:

  $service_obj->Method(Att1 => { Aggregators => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsAggregator object:

  $result = $service_obj->Method(...);
  $result->Att1->Aggregators

=head1 DESCRIPTION

One or more aggregators for viewing counts of OpsItems using different
dimensions such as C<Source>, C<CreatedTime>, or C<Source and
CreatedTime>, to name a few.

=head1 ATTRIBUTES


=head2 Aggregators => ArrayRef[L<Paws::SSM::OpsAggregator>]

A nested aggregator for viewing counts of OpsItems.


=head2 AggregatorType => Str

Either a Range or Count aggregator for limiting an OpsItem summary.


=head2 AttributeName => Str

The name of an OpsItem attribute on which to limit the count of
OpsItems.


=head2 Filters => ArrayRef[L<Paws::SSM::OpsFilter>]

The aggregator filters.


=head2 TypeName => Str

The data type name to use for viewing counts of OpsItems.


=head2 Values => L<Paws::SSM::OpsAggregatorValueMap>

The aggregator value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

