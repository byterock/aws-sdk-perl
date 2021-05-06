
package Paws::Snowball::GetSoftwareUpdatesResult;
  use Moose;
  has UpdatesURI => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetSoftwareUpdatesResult

=head1 ATTRIBUTES


=head2 UpdatesURI => Str

The Amazon S3 presigned URL for the update file associated with the
specified C<JobId> value. The software update will be available for 2
days after this request is made. To access an update after the 2 days
have passed, you'll have to make another call to C<GetSoftwareUpdates>.


=head2 _request_id => Str


=cut

1;