
package Paws::Amplify::CreateDeploymentResult;
  use Moose;
  has FileUploadUrls => (is => 'ro', isa => 'Paws::Amplify::FileUploadUrls', traits => ['NameInRequest'], request_name => 'fileUploadUrls', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has ZipUploadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zipUploadUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateDeploymentResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileUploadUrls => L<Paws::Amplify::FileUploadUrls>

When the fileMap argument is provided in the request, the
fileUploadUrls will contain a map of file names to upload url.


=head2 JobId => Str

The jobId for this deployment, will supply to start deployment api.


=head2 B<REQUIRED> ZipUploadUrl => Str

When the fileMap argument is NOT provided. This zipUploadUrl will be
returned.


=head2 _request_id => Str


=cut

