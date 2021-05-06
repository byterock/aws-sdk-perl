
package Paws::SES::PutConfigurationSetDeliveryOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryOptions => (is => 'ro', isa => 'Paws::SES::DeliveryOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetDeliveryOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::PutConfigurationSetDeliveryOptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetDeliveryOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::PutConfigurationSetDeliveryOptions - Arguments for method PutConfigurationSetDeliveryOptions on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetDeliveryOptions on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method PutConfigurationSetDeliveryOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetDeliveryOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $PutConfigurationSetDeliveryOptionsResponse =
      $email->PutConfigurationSetDeliveryOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      DeliveryOptions      => {
        TlsPolicy => 'Require',    # values: Require, Optional; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetDeliveryOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to specify the delivery
options for.



=head2 DeliveryOptions => L<Paws::SES::DeliveryOptions>

Specifies whether messages that use the configuration set are required
to use Transport Layer Security (TLS).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetDeliveryOptions in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

