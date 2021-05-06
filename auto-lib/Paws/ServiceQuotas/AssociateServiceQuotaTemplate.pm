
package Paws::ServiceQuotas::AssociateServiceQuotaTemplate;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateServiceQuotaTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::AssociateServiceQuotaTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::AssociateServiceQuotaTemplate - Arguments for method AssociateServiceQuotaTemplate on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateServiceQuotaTemplate on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method AssociateServiceQuotaTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateServiceQuotaTemplate.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $AssociateServiceQuotaTemplateResponse =
      $servicequotas->AssociateServiceQuotaTemplate();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/AssociateServiceQuotaTemplate>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateServiceQuotaTemplate in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

