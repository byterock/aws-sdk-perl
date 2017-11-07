
package Paws::IAM::ListServiceSpecificCredentials;
  use Moose;
  has ServiceName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceSpecificCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListServiceSpecificCredentialsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListServiceSpecificCredentialsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListServiceSpecificCredentials - Arguments for method ListServiceSpecificCredentials on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceSpecificCredentials on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method ListServiceSpecificCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceSpecificCredentials.

As an example:

  $service_obj->ListServiceSpecificCredentials(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ServiceName => Str

Filters the returned results to only those for the specified AWS
service. If not specified, then AWS returns service-specific
credentials for all services.



=head2 UserName => Str

The name of the user whose service-specific credentials you want
information about. If this value is not specified then the operation
assumes the user whose credentials are used to call the operation.

This parameter allows (per its regex pattern) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceSpecificCredentials in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

