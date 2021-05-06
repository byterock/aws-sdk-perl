
package Paws::ApiGatewayV2::GetModels;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetModels - Arguments for method GetModels on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModels on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModels.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetModelsResponse = $apigateway->GetModels(
      ApiId      => 'My__string',
      MaxResults => 'My__string',    # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $GetModelsResponse->Items;
    my $NextToken = $GetModelsResponse->NextToken;

    # Returns a L<Paws::ApiGatewayV2::GetModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetModels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 MaxResults => Str

The maximum number of elements to be returned for this resource.



=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModels in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

