
package Paws::EC2::ModifyVpnConnectionResult;
  use Moose;
  has VpnConnection => (is => 'ro', isa => 'Paws::EC2::VpnConnection', request_name => 'vpnConnection', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpnConnectionResult

=head1 ATTRIBUTES


=head2 VpnConnection => L<Paws::EC2::VpnConnection>




=head2 _request_id => Str


=cut

