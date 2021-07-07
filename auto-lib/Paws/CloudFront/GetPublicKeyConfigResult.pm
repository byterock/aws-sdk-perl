
package Paws::CloudFront::GetPublicKeyConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has PublicKeyConfig => (is => 'ro', isa => 'Paws::CloudFront::PublicKeyConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetPublicKeyConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the public key configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

Return the result for the public key configuration.




=cut

