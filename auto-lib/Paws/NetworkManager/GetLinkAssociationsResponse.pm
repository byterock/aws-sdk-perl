
package Paws::NetworkManager::GetLinkAssociationsResponse;
  use Moose;
  has LinkAssociations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::LinkAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetLinkAssociationsResponse

=head1 ATTRIBUTES


=head2 LinkAssociations => ArrayRef[L<Paws::NetworkManager::LinkAssociation>]

The link associations.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

