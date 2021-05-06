
package Paws::ApiGatewayV2::GetIntegration;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has IntegrationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'integrationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/integrations/{integrationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetIntegration - Arguments for method GetIntegration on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntegration on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntegration.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetIntegrationResult = $apigateway->GetIntegration(
      ApiId         => 'My__string',
      IntegrationId => 'My__string',

    );

    # Results:
    my $ApiGatewayManaged = $GetIntegrationResult->ApiGatewayManaged;
    my $ConnectionId      = $GetIntegrationResult->ConnectionId;
    my $ConnectionType    = $GetIntegrationResult->ConnectionType;
    my $ContentHandlingStrategy =
      $GetIntegrationResult->ContentHandlingStrategy;
    my $CredentialsArn    = $GetIntegrationResult->CredentialsArn;
    my $Description       = $GetIntegrationResult->Description;
    my $IntegrationId     = $GetIntegrationResult->IntegrationId;
    my $IntegrationMethod = $GetIntegrationResult->IntegrationMethod;
    my $IntegrationResponseSelectionExpression =
      $GetIntegrationResult->IntegrationResponseSelectionExpression;
    my $IntegrationType      = $GetIntegrationResult->IntegrationType;
    my $IntegrationUri       = $GetIntegrationResult->IntegrationUri;
    my $PassthroughBehavior  = $GetIntegrationResult->PassthroughBehavior;
    my $PayloadFormatVersion = $GetIntegrationResult->PayloadFormatVersion;
    my $RequestParameters    = $GetIntegrationResult->RequestParameters;
    my $RequestTemplates     = $GetIntegrationResult->RequestTemplates;
    my $TemplateSelectionExpression =
      $GetIntegrationResult->TemplateSelectionExpression;
    my $TimeoutInMillis = $GetIntegrationResult->TimeoutInMillis;

    # Returns a L<Paws::ApiGatewayV2::GetIntegrationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> IntegrationId => Str

The integration ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntegration in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

