
package Paws::EC2::AssociateTransitGatewayMulticastDomainResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastDomainAssociations', request_name => 'associations', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateTransitGatewayMulticastDomainResult

=head1 ATTRIBUTES


=head2 Associations => L<Paws::EC2::TransitGatewayMulticastDomainAssociations>

Information about the transit gateway multicast domain associations.


=head2 _request_id => Str


=cut

