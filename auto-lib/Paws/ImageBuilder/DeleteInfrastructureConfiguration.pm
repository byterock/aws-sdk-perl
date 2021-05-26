
package Paws::ImageBuilder::DeleteInfrastructureConfiguration;
  use Moose;
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'infrastructureConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInfrastructureConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteInfrastructureConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteInfrastructureConfiguration - Arguments for method DeleteInfrastructureConfiguration on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInfrastructureConfiguration on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method DeleteInfrastructureConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInfrastructureConfiguration.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $DeleteInfrastructureConfigurationResponse =
      $imagebuilder->DeleteInfrastructureConfiguration(
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',

      );

    # Results:
    my $InfrastructureConfigurationArn =
      $DeleteInfrastructureConfigurationResponse
      ->InfrastructureConfigurationArn;
    my $RequestId = $DeleteInfrastructureConfigurationResponse->RequestId;

# Returns a L<Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/DeleteInfrastructureConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInfrastructureConfiguration in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

