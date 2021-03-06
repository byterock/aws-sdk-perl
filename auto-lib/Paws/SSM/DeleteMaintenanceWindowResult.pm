
package Paws::SSM::DeleteMaintenanceWindowResult;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the deleted maintenance window.


=head2 _request_id => Str


=cut

1;