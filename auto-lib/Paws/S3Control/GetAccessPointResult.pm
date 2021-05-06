
package Paws::S3Control::GetAccessPointResult;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NetworkOrigin => (is => 'ro', isa => 'Str');
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3Control::PublicAccessBlockConfiguration');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::S3Control::VpcConfiguration');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointResult

=head1 ATTRIBUTES


=head2 Bucket => Str

The name of the bucket associated with the specified access point.



=head2 CreationDate => Str

The date and time when the specified access point was created.



=head2 Name => Str

The name of the specified access point.



=head2 NetworkOrigin => Str

Indicates whether this access point allows access from the public
Internet. If C<VpcConfiguration> is specified for this access point,
then C<NetworkOrigin> is C<VPC>, and the access point doesn't allow
access from the public Internet. Otherwise, C<NetworkOrigin> is
C<Internet>, and the access point allows access from the public
Internet, subject to the access point and bucket access policies.

Valid values are: C<"Internet">, C<"VPC">

=head2 PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>





=head2 VpcConfiguration => L<Paws::S3Control::VpcConfiguration>

Contains the Virtual Private Cloud (VPC) configuration for the
specified access point.




=cut

