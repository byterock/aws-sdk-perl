
package Paws::SESv2::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array that lists all the tags that are associated with the resource.
Each tag consists of a required tag key (C<Key>) and an associated tag
value (C<Value>)


=head2 _request_id => Str


=cut

