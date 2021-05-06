
package Paws::DataExchange::ListRevisionAssetsResponse;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::AssetEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListRevisionAssetsResponse

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::DataExchange::AssetEntry>]

The asset objects listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

