
package Paws::CloudFront::UpdatePublicKeyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has PublicKey => (is => 'ro', isa => 'Paws::CloudFront::PublicKey', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdatePublicKeyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the update public key result. For example:
C<E2QWRUHAPOMQZL>.



=head2 PublicKey => L<Paws::CloudFront::PublicKey>

Return the results of updating the public key.




=cut

