
package Paws::ImageBuilder::CancelImageCreation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelImageCreation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CancelImageCreation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CancelImageCreationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CancelImageCreation - Arguments for method CancelImageCreation on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelImageCreation on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CancelImageCreation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelImageCreation.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CancelImageCreationResponse = $imagebuilder->CancelImageCreation(
      ClientToken          => 'MyClientToken',
      ImageBuildVersionArn => 'MyImageBuildVersionArn',

    );

    # Results:
    my $ClientToken = $CancelImageCreationResponse->ClientToken;
    my $ImageBuildVersionArn =
      $CancelImageCreationResponse->ImageBuildVersionArn;
    my $RequestId = $CancelImageCreationResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CancelImageCreationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CancelImageCreation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token used to make this request idempotent.



=head2 B<REQUIRED> ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image whose creation you want to
cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelImageCreation in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

