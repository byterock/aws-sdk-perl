
package Paws::SecretsManager::CancelRotateSecret;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRotateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::CancelRotateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CancelRotateSecret - Arguments for method CancelRotateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelRotateSecret on the 
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method CancelRotateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelRotateSecret.

As an example:

  $service_obj->CancelRotateSecret(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

Specifies the secret for which you want to cancel a rotation request.
You can specify either the Amazon Resource Name (ARN) or the friendly
name of the secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelRotateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
