
package Paws::AutoScaling::PoliciesType;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::ScalingPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PoliciesType

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 ScalingPolicies => ArrayRef[L<Paws::AutoScaling::ScalingPolicy>]

The scaling policies.


=head2 _request_id => Str


=cut

