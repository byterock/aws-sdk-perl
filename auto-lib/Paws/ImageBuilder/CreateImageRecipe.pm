
package Paws::ImageBuilder::CreateImageRecipe;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::InstanceBlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'blockDeviceMappings');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ComponentConfiguration]', traits => ['NameInRequest'], request_name => 'components', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ParentImage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentImage', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateImageRecipe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateImageRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateImageRecipe - Arguments for method CreateImageRecipe on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageRecipe on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateImageRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageRecipe.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateImageRecipeResponse = $imagebuilder->CreateImageRecipe(
      ClientToken => 'MyClientToken',
      Components  => [
        {
          ComponentArn => 'MyComponentVersionArnOrBuildVersionArn',

        },
        ...
      ],
      Name                => 'MyResourceName',
      ParentImage         => 'MyNonEmptyString',
      SemanticVersion     => 'MyVersionNumber',
      BlockDeviceMappings => [
        {
          DeviceName => 'MyNonEmptyString',    # min: 1, max: 1024
          Ebs        => {
            DeleteOnTermination => 1,          # OPTIONAL
            Encrypted           => 1,          # OPTIONAL
            Iops                => 1,          # min: 100, max: 10000; OPTIONAL
            KmsKeyId   => 'MyNonEmptyString',  # min: 1, max: 1024
            SnapshotId => 'MyNonEmptyString',  # min: 1, max: 1024
            VolumeSize => 1,                   # min: 1, max: 16000; OPTIONAL
            VolumeType =>
              'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyEmptyString',       # OPTIONAL
          VirtualName => 'MyNonEmptyString',    # min: 1, max: 1024
        },
        ...
      ],                                        # OPTIONAL
      Description => 'MyNonEmptyString',        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ClientToken    = $CreateImageRecipeResponse->ClientToken;
    my $ImageRecipeArn = $CreateImageRecipeResponse->ImageRecipeArn;
    my $RequestId      = $CreateImageRecipeResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateImageRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateImageRecipe>

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::ImageBuilder::InstanceBlockDeviceMapping>]

The block device mappings of the image recipe.



=head2 B<REQUIRED> ClientToken => Str

The idempotency token used to make this request idempotent.



=head2 B<REQUIRED> Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

The components of the image recipe.



=head2 Description => Str

The description of the image recipe.



=head2 B<REQUIRED> Name => Str

The name of the image recipe.



=head2 B<REQUIRED> ParentImage => Str

The parent image of the image recipe.



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the image recipe.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the image recipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageRecipe in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

