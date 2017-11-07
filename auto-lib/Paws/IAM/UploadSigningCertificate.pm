
package Paws::IAM::UploadSigningCertificate;
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UploadSigningCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSigningCertificate - Arguments for method UploadSigningCertificate on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadSigningCertificate on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method UploadSigningCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadSigningCertificate.

As an example:

  $service_obj->UploadSigningCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateBody => Str

The contents of the signing certificate.

The regex pattern used to validate this parameter is a string of
characters consisting of any printable ASCII character ranging from the
space character (\u0020) through end of the ASCII character range as
well as the printable characters in the Basic Latin and Latin-1
Supplement character set (through \u00FF). It also includes the special
characters tab (\u0009), line feed (\u000A), and carriage return
(\u000D).



=head2 UserName => Str

The name of the user the signing certificate is for.

This parameter allows (per its regex pattern) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadSigningCertificate in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

