
package Paws::Rekognition::CompareFaces;
  use Moose;
  has QualityFilter => (is => 'ro', isa => 'Str');
  has SimilarityThreshold => (is => 'ro', isa => 'Num');
  has SourceImage => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has TargetImage => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompareFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CompareFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CompareFaces - Arguments for method CompareFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompareFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CompareFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompareFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To compare two images
    # This operation compares the largest face detected in the source image with
    # each face detected in the target image.
    my $CompareFacesResponse = $rekognition->CompareFaces(
      'SimilarityThreshold' => 90,
      'SourceImage'         => {
        'S3Object' => {
          'Bucket' => 'mybucket',
          'Name'   => 'mysourceimage'
        }
      },
      'TargetImage' => {
        'S3Object' => {
          'Bucket' => 'mybucket',
          'Name'   => 'mytargetimage'
        }
      }
    );

    # Results:
    my $FaceMatches     = $CompareFacesResponse->FaceMatches;
    my $SourceImageFace = $CompareFacesResponse->SourceImageFace;

    # Returns a L<Paws::Rekognition::CompareFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CompareFaces>

=head1 ATTRIBUTES


=head2 QualityFilter => Str

A filter that specifies a quality bar for how much filtering is done to
identify faces. Filtered faces aren't compared. If you specify C<AUTO>,
Amazon Rekognition chooses the quality bar. If you specify C<LOW>,
C<MEDIUM>, or C<HIGH>, filtering removes all faces that donE<rsquo>t
meet the chosen quality bar. The quality bar is based on a variety of
common use cases. Low-quality detections can occur for a number of
reasons. Some examples are an object that's misidentified as a face, a
face that's too blurry, or a face with a pose that's too extreme to
use. If you specify C<NONE>, no filtering is performed. The default
value is C<NONE>.

To use quality filtering, the collection you are using must be
associated with version 3 of the face model or higher.

Valid values are: C<"NONE">, C<"AUTO">, C<"LOW">, C<"MEDIUM">, C<"HIGH">

=head2 SimilarityThreshold => Num

The minimum level of confidence in the face matches that a match must
meet to be included in the C<FaceMatches> array.



=head2 B<REQUIRED> SourceImage => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing base64-encoded
image bytes is not supported.

If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the C<Bytes> field. For
more information, see Images in the Amazon Rekognition developer guide.



=head2 B<REQUIRED> TargetImage => L<Paws::Rekognition::Image>

The target image as base64-encoded bytes or an S3 object. If you use
the AWS CLI to call Amazon Rekognition operations, passing
base64-encoded image bytes is not supported.

If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the C<Bytes> field. For
more information, see Images in the Amazon Rekognition developer guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompareFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

