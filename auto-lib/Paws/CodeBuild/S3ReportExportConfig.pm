package Paws::CodeBuild::S3ReportExportConfig;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest']);
  has EncryptionDisabled => (is => 'ro', isa => 'Bool', request_name => 'encryptionDisabled', traits => ['NameInRequest']);
  has EncryptionKey => (is => 'ro', isa => 'Str', request_name => 'encryptionKey', traits => ['NameInRequest']);
  has Packaging => (is => 'ro', isa => 'Str', request_name => 'packaging', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::S3ReportExportConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::S3ReportExportConfig object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::S3ReportExportConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Information about the S3 bucket where the raw data of a report are
exported.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The name of the S3 bucket where the raw data of a report are exported.


=head2 EncryptionDisabled => Bool

  A boolean value that specifies if the results of a report are
encrypted.


=head2 EncryptionKey => Str

  The encryption key for the report's encrypted raw data.


=head2 Packaging => Str

  The type of build output artifact to create. Valid values include:

=over

=item *

C<NONE>: AWS CodeBuild creates the raw data in the output bucket. This
is the default if packaging is not specified.

=item *

C<ZIP>: AWS CodeBuild creates a ZIP file with the raw data in the
output bucket.

=back



=head2 Path => Str

  The path to the exported report's raw data results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

