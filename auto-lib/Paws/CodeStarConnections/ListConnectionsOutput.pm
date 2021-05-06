
package Paws::CodeStarConnections::ListConnectionsOutput;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Connection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListConnectionsOutput

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::CodeStarConnections::Connection>]

A list of connections and the details for each connection, such as
status, owner, and provider type.


=head2 NextToken => Str

A token that can be used in the next C<ListConnections> call. To view
all items in the list, continue to call this operation with each
subsequent token until no more C<nextToken> values are returned.


=head2 _request_id => Str


=cut

1;