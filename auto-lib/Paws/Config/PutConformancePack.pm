
package Paws::Config::PutConformancePack;
  use Moose;
  has ConformancePackInputParameters => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackInputParameter]');
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryS3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryS3KeyPrefix => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateS3Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConformancePack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutConformancePackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConformancePack - Arguments for method PutConformancePack on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConformancePack on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutConformancePack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConformancePack.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutConformancePackResponse = $config->PutConformancePack(
      ConformancePackName            => 'MyConformancePackName',
      DeliveryS3Bucket               => 'MyDeliveryS3Bucket',
      ConformancePackInputParameters => [
        {
          ParameterName  => 'MyParameterName',     # max: 255
          ParameterValue => 'MyParameterValue',    # max: 4096

        },
        ...
      ],                                           # OPTIONAL
      DeliveryS3KeyPrefix => 'MyDeliveryS3KeyPrefix',    # OPTIONAL
      TemplateBody        => 'MyTemplateBody',           # OPTIONAL
      TemplateS3Uri       => 'MyTemplateS3Uri',          # OPTIONAL
    );

    # Results:
    my $ConformancePackArn = $PutConformancePackResponse->ConformancePackArn;

    # Returns a L<Paws::Config::PutConformancePackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutConformancePack>

=head1 ATTRIBUTES


=head2 ConformancePackInputParameters => ArrayRef[L<Paws::Config::ConformancePackInputParameter>]

A list of C<ConformancePackInputParameter> objects.



=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack you want to create.



=head2 B<REQUIRED> DeliveryS3Bucket => Str

AWS Config stores intermediate files while processing conformance pack
template.



=head2 DeliveryS3KeyPrefix => Str

The prefix for the Amazon S3 bucket.



=head2 TemplateBody => Str

A string containing full conformance pack template body. Structure
containing the template body with a minimum length of 1 byte and a
maximum length of 51,200 bytes.

You can only use a YAML template with one resource type, that is,
config rule and a remediation action.



=head2 TemplateS3Uri => Str

Location of file containing the template body
(C<s3://bucketname/prefix>). The uri must point to the conformance pack
template (max size: 300 KB) that is located in an Amazon S3 bucket in
the same region as the conformance pack.

You must have access to read Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConformancePack in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

