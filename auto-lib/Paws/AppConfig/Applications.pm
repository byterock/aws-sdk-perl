
package Paws::AppConfig::Applications;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Application]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Applications

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::AppConfig::Application>]

The elements from this collection.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

