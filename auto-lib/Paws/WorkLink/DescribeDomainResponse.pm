
package Paws::WorkLink::DescribeDomainResponse;
  use Moose;
  has AcmCertificateArn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDomainResponse

=head1 ATTRIBUTES


=head2 AcmCertificateArn => Str

The ARN of an issued ACM certificate that is valid for the domain being
associated.


=head2 CreatedTime => Str

The time that the domain was added.


=head2 DisplayName => Str

The name to display.


=head2 DomainName => Str

The name of the domain.


=head2 DomainStatus => Str

The current state for the domain.

Valid values are: C<"PENDING_VALIDATION">, C<"ASSOCIATING">, C<"ACTIVE">, C<"INACTIVE">, C<"DISASSOCIATING">, C<"DISASSOCIATED">, C<"FAILED_TO_ASSOCIATE">, C<"FAILED_TO_DISASSOCIATE">
=head2 _request_id => Str


=cut

