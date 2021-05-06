
package Paws::KMS::UpdateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', required => 1);
  has TargetKeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::UpdateAlias - Arguments for method UpdateAlias on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAlias on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method UpdateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAlias.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
   # To update an alias
   # The following example updates the specified alias to refer to the specified
   # customer master key (CMK).
    $kms->UpdateAlias(
      'AliasName'   => 'alias/ExampleAlias',
      'TargetKeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/UpdateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

Identifies the alias that is changing its CMK. This value must begin
with C<alias/> followed by the alias name, such as
C<alias/ExampleAlias>. You cannot use UpdateAlias to change the alias
name.



=head2 B<REQUIRED> TargetKeyId => Str

Identifies the CMK to associate with the alias. When the update
operation completes, the alias will point to this CMK.

The CMK must be in the same AWS account and Region as the alias. Also,
the new target CMK must be the same type as the current target CMK
(both symmetric or both asymmetric) and they must have the same key
usage.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.

To verify that the alias is mapped to the correct CMK, use ListAliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAlias in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

