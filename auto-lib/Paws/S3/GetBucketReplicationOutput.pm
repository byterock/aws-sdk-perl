
package Paws::S3::GetBucketReplicationOutput;
  use Moose;
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::S3::ReplicationConfiguration', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketReplicationOutput

=head1 ATTRIBUTES


=head2 ReplicationConfiguration => L<Paws::S3::ReplicationConfiguration>






=cut

