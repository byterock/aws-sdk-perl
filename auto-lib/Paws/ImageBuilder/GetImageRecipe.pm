
package Paws::ImageBuilder::GetImageRecipe;
  use Moose;
  has ImageRecipeArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'imageRecipeArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImageRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetImageRecipe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetImageRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImageRecipe - Arguments for method GetImageRecipe on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImageRecipe on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetImageRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImageRecipe.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetImageRecipeResponse = $imagebuilder->GetImageRecipe(
      ImageRecipeArn => 'MyImageRecipeArn',

    );

    # Results:
    my $ImageRecipe = $GetImageRecipeResponse->ImageRecipe;
    my $RequestId   = $GetImageRecipeResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::GetImageRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetImageRecipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageRecipeArn => Str

The Amazon Resource Name (ARN) of the image recipe that you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImageRecipe in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

