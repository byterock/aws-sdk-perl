
package Paws::KMS::CreateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has CustomerMasterKeySpec => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateKey - Arguments for method CreateKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To create a customer master key (CMK)
    # The following example creates a CMK.
    my $CreateKeyResponse = $kms->CreateKey();

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::CreateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateKey>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the risk that the CMK becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section in the I< I<AWS Key Management Service Developer Guide> >.

Use this parameter only when you include a policy in the request and
you intend to prevent the principal that is making the request from
making a subsequent PutKeyPolicy request on the CMK.

The default value is false.



=head2 CustomerMasterKeySpec => Str

Specifies the type of CMK to create. The default value,
C<SYMMETRIC_DEFAULT>, creates a CMK with a 256-bit symmetric key for
encryption and decryption. For help choosing a key spec for your CMK,
see How to Choose Your CMK Configuration
(https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html)
in the I<AWS Key Management Service Developer Guide>.

The C<CustomerMasterKeySpec> determines whether the CMK contains a
symmetric key or an asymmetric key pair. It also determines the
encryption algorithms or signing algorithms that the CMK supports. You
can't change the C<CustomerMasterKeySpec> after the CMK is created. To
further restrict the algorithms that can be used with the CMK, use a
condition key in its key policy or IAM policy. For more information,
see kms:EncryptionAlgorithm
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm)
or kms:Signing Algorithm
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm)
in the I<AWS Key Management Service Developer Guide>.

AWS services that are integrated with AWS KMS
(http://aws.amazon.com/kms/features/#AWS_Service_Integration) use
symmetric CMKs to protect your data. These services do not support
asymmetric CMKs. For help determining whether a CMK is symmetric or
asymmetric, see Identifying Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html)
in the I<AWS Key Management Service Developer Guide>.

AWS KMS supports the following key specs for CMKs:

=over

=item *

Symmetric key (default)

=over

=item *

C<SYMMETRIC_DEFAULT> (AES-256-GCM)

=back

=item *

Asymmetric RSA key pairs

=over

=item *

C<RSA_2048>

=item *

C<RSA_3072>

=item *

C<RSA_4096>

=back

=item *

Asymmetric NIST-recommended elliptic curve key pairs

=over

=item *

C<ECC_NIST_P256> (secp256r1)

=item *

C<ECC_NIST_P384> (secp384r1)

=item *

C<ECC_NIST_P521> (secp521r1)

=back

=item *

Other asymmetric elliptic curve key pairs

=over

=item *

C<ECC_SECG_P256K1> (secp256k1), commonly used for cryptocurrencies.

=back

=back


Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">

=head2 CustomKeyStoreId => Str

Creates the CMK in the specified custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
and the key material in its associated AWS CloudHSM cluster. To create
a CMK in a custom key store, you must also specify the C<Origin>
parameter with a value of C<AWS_CLOUDHSM>. The AWS CloudHSM cluster
that is associated with the custom key store must have at least two
active HSMs, each in a different Availability Zone in the Region.

This parameter is valid only for symmetric CMKs. You cannot create an
asymmetric CMK in a custom key store.

To find the ID of a custom key store, use the DescribeCustomKeyStores
operation.

The response includes the custom key store ID and the ID of the AWS
CloudHSM cluster.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.



=head2 Description => Str

A description of the CMK.

Use a description that helps you decide whether the CMK is appropriate
for a task.



=head2 KeyUsage => Str

Determines the cryptographic operations for which you can use the CMK.
The default value is C<ENCRYPT_DECRYPT>. This parameter is required
only for asymmetric CMKs. You can't change the C<KeyUsage> value after
the CMK is created.

Select only one valid value.

=over

=item *

For symmetric CMKs, omit the parameter or specify C<ENCRYPT_DECRYPT>.

=item *

For asymmetric CMKs with RSA key material, specify C<ENCRYPT_DECRYPT>
or C<SIGN_VERIFY>.

=item *

For asymmetric CMKs with ECC key material, specify C<SIGN_VERIFY>.

=back


Valid values are: C<"SIGN_VERIFY">, C<"ENCRYPT_DECRYPT">

=head2 Origin => Str

The source of the key material for the CMK. You cannot change the
origin after you create the CMK. The default is C<AWS_KMS>, which means
AWS KMS creates the key material.

When the parameter value is C<EXTERNAL>, AWS KMS creates a CMK without
key material so that you can import key material from your existing key
management infrastructure. For more information about importing key
material into AWS KMS, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>. This value is
valid only for symmetric CMKs.

When the parameter value is C<AWS_CLOUDHSM>, AWS KMS creates the CMK in
an AWS KMS custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
and creates its key material in the associated AWS CloudHSM cluster.
You must also use the C<CustomKeyStoreId> parameter to identify the
custom key store. This value is valid only for symmetric CMKs.

Valid values are: C<"AWS_KMS">, C<"EXTERNAL">, C<"AWS_CLOUDHSM">

=head2 Policy => Str

The key policy to attach to the CMK.

If you provide a key policy, it must meet the following criteria:

=over

=item *

If you don't set C<BypassPolicyLockoutSafetyCheck> to true, the key
policy must allow the principal that is making the C<CreateKey> request
to make a subsequent PutKeyPolicy request on the CMK. This reduces the
risk that the CMK becomes unmanageable. For more information, refer to
the scenario in the Default Key Policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section of the I< I<AWS Key Management Service Developer Guide> >.

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to AWS KMS.
When you create a new AWS principal (for example, an IAM user or role),
you might need to enforce a delay before including the new principal in
a key policy because the new principal might not be immediately visible
to AWS KMS. For more information, see Changes that I make are not
always immediately visible
(https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<AWS Identity and Access Management User Guide>.

=back

If you do not provide a key policy, AWS KMS attaches a default key
policy to the CMK. For more information, see Default Key Policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default)
in the I<AWS Key Management Service Developer Guide>.

The key policy size quota is 32 kilobytes (32768 bytes).



=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

One or more tags. Each tag consists of a tag key and a tag value. Both
the tag key and the tag value are required, but the tag value can be an
empty (null) string.

When you add tags to an AWS resource, AWS generates a cost allocation
report with usage and costs aggregated by tags. For information about
adding, changing, deleting and listing tags for CMKs, see Tagging Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).

Use this parameter to tag the CMK when it is created. To add tags to an
existing CMK, use the TagResource operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

