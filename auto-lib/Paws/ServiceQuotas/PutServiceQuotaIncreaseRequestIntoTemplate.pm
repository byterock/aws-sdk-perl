
package Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplate;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', required => 1);
  has DesiredValue => (is => 'ro', isa => 'Num', required => 1);
  has QuotaCode => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutServiceQuotaIncreaseRequestIntoTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplate - Arguments for method PutServiceQuotaIncreaseRequestIntoTemplate on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutServiceQuotaIncreaseRequestIntoTemplate on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method PutServiceQuotaIncreaseRequestIntoTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutServiceQuotaIncreaseRequestIntoTemplate.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $PutServiceQuotaIncreaseRequestIntoTemplateResponse =
      $servicequotas->PutServiceQuotaIncreaseRequestIntoTemplate(
      AwsRegion    => 'MyAwsRegion',
      DesiredValue => 1,
      QuotaCode    => 'MyQuotaCode',
      ServiceCode  => 'MyServiceCode',

      );

    # Results:
    my $ServiceQuotaIncreaseRequestInTemplate =
      $PutServiceQuotaIncreaseRequestIntoTemplateResponse
      ->ServiceQuotaIncreaseRequestInTemplate;

# Returns a L<Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/PutServiceQuotaIncreaseRequestIntoTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

Specifies the AWS Region for the quota.



=head2 B<REQUIRED> DesiredValue => Num

Specifies the new, increased value for the quota.



=head2 B<REQUIRED> QuotaCode => Str

Specifies the service quota that you want to use.



=head2 B<REQUIRED> ServiceCode => Str

Specifies the service that you want to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutServiceQuotaIncreaseRequestIntoTemplate in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

