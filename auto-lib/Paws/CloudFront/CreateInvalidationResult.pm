
package Paws::CloudFront::CreateInvalidationResult;
  use Moose;
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation', traits => ['ParamInBody']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateInvalidationResult

=head1 ATTRIBUTES


=head2 Invalidation => L<Paws::CloudFront::Invalidation>

The invalidation's information.



=head2 Location => Str

The fully qualified URI of the distribution and invalidation batch
request, including the C<Invalidation ID>.




=cut

