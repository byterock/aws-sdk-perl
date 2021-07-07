
package Paws::STS::GetFederationTokenResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'Paws::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetFederationTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 FederatedUser => L<Paws::STS::FederatedUser>

Identifiers for the federated user associated with the credentials
(such as C<arn:aws:sts::123456789012:federated-user/Bob> or
C<123456789012:Bob>). You can use the federated user's ARN in your
resource-based policies, such as an Amazon S3 bucket policy.


=head2 PackedPolicySize => Int

A percentage value that indicates the packed size of the session
policies and session tags combined passed in the request. The request
fails if the packed size is greater than 100 percent, which means the
policies and tags exceeded the allowed space.


=head2 _request_id => Str


=cut

