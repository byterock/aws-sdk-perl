
package Paws::S3::DeleteObjectOutput;
  use Moose;
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-delete-marker', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectOutput

=head1 ATTRIBUTES


=head2 DeleteMarker => Bool

Specifies whether the versioned object that was permanently deleted was
(true) or was not (false) a delete marker.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 VersionId => Str

Returns the version ID of the delete marker created as a result of the
DELETE operation.




=cut

